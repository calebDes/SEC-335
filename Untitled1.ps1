param($network, $server)

for($i=1; $i -le 254; $i++){
   $name = Resolve-DnsName -DnsOnly "$network.$i" -Server $server -ErrorAction Ignore | Select-Object NameHost
   if ($name -eq $null){
   }
   else {
     echo "$network.$i $name"
   }
}
#figure out how to extract name host: $name.namehost
#if name host isn't found then make sure it isn't outputted

