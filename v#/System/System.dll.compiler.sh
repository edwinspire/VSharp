#!/bin/bash

#valac  "System.Net.Mail/MailAddress.vala" "System.Net.Mail/DeliveryNotificationOptions.vala" "System.Net.Mail/SmtpAccess.vala" "System.Net.Mail/SmtpDeliveryMethod.vala" "System.Net.Mail/MailAddressCollection.vala" "System.Net.Mail/MailPriority.vala" "System.Net.Mail/SmtpStatusCode.vala"   "System.IO.Ports/Handshake.vala" "System.IO.Ports/Parity.vala" "System.IO.Ports/StopBits.vala" "System.IO.Ports/SerialData.vala" "System.Net.Mime/MediaTypeNames.vala" "System.Net.Mime/DispositionTypeNames.vala"  "System.Net.Mime/TransferEncoding.vala" --pkg gee-1.0   --library libSystem  --vapi "libSystem.vapi"  -H "libSystem.h"  -o libSystem.so  -X -fPIC -X --share
find . -name *.vala -type f -print | xargs valac  --pkg gee-1.0   --library libSystem  --vapi "libSystem.vapi"  -H "libSystem.h"  -o libSystem.so  -X -fPIC -X --share
./System.dll.valadoc.sh

read
