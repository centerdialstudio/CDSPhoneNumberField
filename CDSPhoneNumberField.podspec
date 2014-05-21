Pod::Spec.new do |s|
  s.name         = "CDSPhoneNumberField"
  s.version      = "1.0.0"
  s.summary      = "A UITextField replacement that formats phone numbers correctly."
  s.description  = "A custom UITextField that replaces numbers as a user types so that resulting value is an easy to read phone number."                
  s.homepage     = "https://github.com/centerdialstudio/CDSPhoneNumberField"
  s.license      = "MIT"
  s.author             = { "Center Dial Studio" => "Chris Anderson" }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/centerdialstudio/CDSPhoneNumberField.git", :tag => "1.0.0" }
  s.source_files  = "CDSPhoneNumberField/*.{h,m}"
  s.requires_arc = true
end