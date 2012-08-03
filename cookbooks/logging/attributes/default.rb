#
# Cookbook Name:: logging
#
# Copyright RightScale, Inc. All rights reserved.  All access and use subject to the
# RightScale Terms of Service available at http://www.rightscale.com/terms.php and,
# if applicable, other agreements such as a RightScale Master Subscription Agreement.

set_unless[:logging][:remote_server] = ""

set[:logging][:cert_dir] = "/etc/tls/"

set[:logging][:stunnel_service] = value_for_platform(
  ["centos", "redhat"] => {
    "default" => "stunnel"
  },
  ["ubuntu"] => {
    "default" => "stunnel4"
  }
)