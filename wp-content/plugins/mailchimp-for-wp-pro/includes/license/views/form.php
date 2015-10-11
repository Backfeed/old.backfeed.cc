<?php
if ( ! defined( 'ABSPATH' ) ) {
	header( 'HTTP/1.0 403 Forbidden' );
	die;
}

/**
 * @var DVK_Plugin_License_Manager $license_manager
 */
$license_manager = $this;

/**
 * @var MC4WP_Product $product
 */
$product = $license_manager->product;


$license_manager->show_license_form_heading();

// Output form tags if we're not embedded in another form
if( ! $embedded ) {
	echo '<form method="post" action="">';
}

wp_nonce_field( $nonce_name, $nonce_name ); ?>
<table class="form-table yoast-license-form">
	<tbody>
		<tr valign="top">
			<th scope="row" valign="top"><?php _e( 'License status', $product->text_domain ); ?></th>
			<td>
				<?php if( $license_manager->license_is_valid() ) { ?>
					<span style="color: white; background: limegreen; padding:3px 6px;"><?php _e( 'ACTIVE', $product->text_domain ); ?></span> &nbsp; - &nbsp; <?php _e( 'you are receiving updates', $product->text_domain ); ?>
				<?php } elseif( $license_manager->get_license_status() === 'expired' ) { ?>
					<span style="color: white; background: #d3d3d3; padding:3px 6px;"><?php _e( 'EXPIRED', $product->text_domain ); ?></span> &nbsp; - &nbsp; <?php _e( 'you are <strong>not</strong> receiving updates.', $product->text_domain ); ?>
				<?php } else { ?>
					<span style="color:white; background: red; padding: 3px 6px;"><?php _e( 'INACTIVE', $product->text_domain ); ?></span> &nbsp; - &nbsp; <?php _e( 'you are <strong>not</strong> receiving updates.', $product->text_domain ); ?>
				<?php } ?>
			</td>
		</tr>
		<tr valign="top">
			<th scope="row" valign="top"><?php _e( 'Toggle license status', $product->text_domain ); ?></th>
			<td class="yoast-license-toggler">

				<?php if( $license_manager->license_is_valid() ) { ?>
					<button name="<?php echo esc_attr( $action_name ); ?>" type="submit" class="button-secondary yoast-license-deactivate" value="deactivate"><?php echo esc_html_e( 'Deactivate License', $product->text_domain ); ?></button> &nbsp;
					<small><?php _e( '(deactivate your license so you can activate it on another WordPress site)', $product->text_domain ); ?></small>
				<?php } else {

					if( $license_manager->get_license_key() !== '') { ?>
						<button name="<?php echo esc_attr( $action_name ); ?>" type="submit" class="button-secondary yoast-license-activate" value="activate" /><?php echo esc_html_e( 'Activate License', $product->text_domain ); ?></button> &nbsp;
					<?php } else {
						_e( 'Please enter a license key in the field below first.', $product->text_domain );
}

} ?>

			</td>
		</tr>
		<tr valign="top">
			<th scope="row" valign="top"><?php _e( 'License Key', $product->text_domain ); ?></th>
			<td>
				<input name="<?php echo esc_attr( $key_name ); ?>" type="text" class="widefat yoast-license-key-field <?php if( $obfuscate ) { ?>yoast-license-obfuscate<?php } ?>" value="<?php echo esc_attr( $visible_license_key ); ?>" placeholder="<?php echo esc_attr( sprintf( __( 'Paste your license key here, as found in the email receipt.', $product->text_domain ), $product->item_name ) ); ?>" <?php if( $readonly ) { echo 'readonly="readonly"'; } ?> />
			</td>
		</tr>

	</tbody>
</table>

<?php
if( '' !== $license_manager->get_license_key() ) {
	if( $license_manager->get_license_status() === 'expired' ) {
		printf( __( 'Your plugin license has expired. You will no longer have access to plugin updates unless you <a href="%s">renew your license</a>.', 'mailchimp-for-wp' ), $product->get_tracking_url( '/checkout/?edd_license_key=' . $license_manager->get_license_key(), 'renewal_link' ) );
	} else {
		$expiry_date = $license_manager->get_license_expiry_date();

		if( ! empty( $expiry_date ) ) {
			echo '<p>';

			if ( strtotime( 'now' ) > $expiry_date ) {
				// license has expired
				printf( __( 'Your plugin license has expired. You will no longer have access to plugin updates unless you <a href="%s">renew your license</a>.', 'mailchimp-for-wp' ), $product->get_tracking_url( '/checkout/?edd_license_key=' . $license_manager->get_license_key(), 'renewal_link' ) );

			} else {
				// license is valid
				printf( __( 'Your %s license will expire on %s.', $product->text_domain ), $product->item_name, date( 'F jS Y', $expiry_date ) );

				// add link to renew license is less than 3 months left
				if ( strtotime( '+3 months' ) > $expiry_date ) {
					printf( ' ' . __( '<a href="%s">Renew your license now</a>.', $product->text_domain ), $product->get_tracking_url( '/checkout/?edd_license_key=' . $license_manager->get_license_key(), 'renewal_link' ) );
				}
			}

			echo '</p>';
		}
	}
}

// Only show a "Save Changes" button and end form if we're not embedded in another form.
if( ! $embedded ) {

	// only show "Save Changes" button if license is not activated
	if( $readonly === false ) {
		submit_button();
	}

	echo '</form>';
}

echo '<br />';