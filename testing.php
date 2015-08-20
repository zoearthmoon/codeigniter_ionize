<?php 
echo $_SERVER['REQUEST_URI'].'<br>';
$subdomains = $_SERVER['SERVER_NAME'];
if(preg_match("/(?P<domain>[a-z0-9][a-z0-9\-]{1,63}\.[a-z\.]{2,6})$/i", $subdomains, $matches))
{
    //$matches['domain'];
    $domain = $matches['domain'];
}
    
    //$domain = extract_domain($subdomains);
    echo rtrim(strstr($subdomains, $domain, true), '.');
?>