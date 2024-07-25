
use strict;
use warnings;
use Test::More;

use Mail::IMAPClient;
use Mail::IMAPClient::BodyStructure;

local $::RD_TRACE=1;
#                                                     type  subt   parms               disp id desc  size enc md5 lng ext loc ?   ?
my $axigen_bodystructure = q{FETCH (BODYSTRUCTURE (("TEXT" "plain" ("charset" "utf-8") NIL NIL "base64" 534 8 NIL NIL NIL NIL NIL NIL) ("TEXT" "html" ("charset" "utf-8") NIL NIL "base64" 1266 18 NIL NIL NIL NIL NIL NIL) "alternative" ("boundary" "--_com.samsung.android.email_2722452845804670") NIL NIL NIL NIL NIL) UID 1139)};

my $p = Mail::IMAPClient::BodyStructure->new($axigen_bodystructure);
isnt $p, undef;

#                                   t       st      params                    dis id  desc               size en md5 lng ext loc ?   ?     t      st     parms                     dis id  desc               size enc md5 lng ext loc ?  ?      
my $bs2 = q{FETCH (BODYSTRUCTURE ((("TEXT" "plain" ("charset" "Windows-1252") NIL NIL "quoted-printable" 2779 85 NIL NIL NIL NIL NIL NIL)("TEXT" "html" ("charset" "Windows-1252") NIL NIL "quoted-printable" 8318 170 NIL NIL NIL NIL NIL NIL) "alternative" ("boundary" "_000_PS2P216MB0563FA84103338C5C50A9A5DD11A0PS2P216MB0563KORP_") NIL NIL NIL NIL NIL)("image" "jpeg" ("name" "A112656976F74B5F829A35ADCC3422DD.jpeg") "A112656976F74B5F829A35ADCC3422DD" "A112656976F74B5F829A35ADCC3422DD.jpeg" "base64" 62992 NIL ("inline" ("filename" "A112656976F74B5F829A35ADCC3422DD.jpeg" "size" "46032" "creation-date" "Fri, 23 Oct 2020 03:04:41 GMT" "modification-date" "Fri, 23 Oct 2020 03:04:41 GMT")) NIL NIL NIL NIL) "related" ("boundary" "_004_PS2P216MB0563FA84103338C5C50A9A5DD11A0PS2P216MB0563KORP_" "type" "multipart/alternative") NIL ("en-AU") NIL NIL NIL) UID 1591)};

$p = Mail::IMAPClient::BodyStructure->new($bs2);
isnt $p, undef;

my $bs3 = q{FETCH (BODYSTRUCTURE (("TEXT" "plain" ("charset" "UTF-8") NIL NIL "quoted-printable" 196  9     NIL NIL  NIL  NIL   NIL  NIL)("TEXT" "html" ("charset" "UTF-8") NIL NIL "quoted-printable" 1458 20 NIL NIL NIL NIL NIL NIL) "alternative" ("boundary" "0000000000002e959505cc2e501c") NIL NIL NIL NIL NIL) UID 870)};

$p = Mail::IMAPClient::BodyStructure->new($bs3);
isnt $p, undef;

done_testing;

__END__
