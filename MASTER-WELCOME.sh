echo '---------------------------------------------------------------------'

echo '
  ____   ____  _____        _    _ ______ _      _____  ______ _____  
 |  _ \ / __ \|  __ \      | |  | |  ____| |    |  __ \|  ____|  __ \ 
 | |_) | |  | | |__) |_____| |__| | |__  | |    | |__) | |__  | |__) |
 |  _ <| |  | |  ___/______|  __  |  __| | |    |  ___/|  __| |  _  / 
 | |_) | |__| | |          | |  | | |____| |____| |    | |____| | \ \ 
 |____/ \____/|_|          |_|  |_|______|______|_|    |______|_|  \_\ 

for more information visit the offical Billion Oyster Project Website

Website: https://www.billionoysterproject.org/

---------------------------------------------------------------------

Welcome to BOP Helper the coolest way to go through OSR Data!!!

Here is a List of what you can do: 

1: List the Year, Month, and Specified Broodstock

2: List the Year, Month, Broodstock, and Specified Location.

---------------------------------------------------------------------'

echo -n  'Please choose a number: ' 
read answer

if [ "$answer" != "${answer#[1]}" ] ;then
	./YMB-BOPREV1.sh
elif [ "$answer" != "${answer#[2]}" ] ;then
	./YMBL-BOPREV2.sh
else
    echo No
fi

