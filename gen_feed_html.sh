#/bin/bash


function do_header
{
	echo     "<!DOCTYPE html>
			<html>
			<head>
			<meta charset=\"UTF-8\">
			<script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>
			<script>
			  (adsbygoogle = window.adsbygoogle || []).push({
			   google_ad_client: \"ca-pub-2493183504773922\",
			    enable_page_level_ads: true
			  });
			</script>
			<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
			<link rel=\"stylesheet\" href=\"bootstrap.min.css\">
			<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
			ga('create', 'UA-84384557-1', 'auto');
			ga('send', 'pageview');
			</script>
			</head>
			<body>
			`date +%d/%m/%Y-%R`
			<div class=\"container\">
			<div class=\"row\">";
}

function do_file
{
	feeddate="aaa"
	feeddate=$(xmllint --xpath '//rss/channel/lastBuildDate/text()' $1)
	#echo "valor do feeddate " ${feeddate}
	#echo "date transformada " $(date --date="${feeddate}" "+%d/%m/%Y-%R")
	echo	"<div class=\"panel panel-primary\">
		 <div class=\"panel-heading\"><h3 class=\"panel-title\">" `xmllint --xpath '//rss/channel/title/text()' $1` " "
	if [ "${feeddate}" != "aaa" ]
	then
		echo $(date --date="${feeddate}" "+%d/%m/%Y-%R");
	fi;
	echo "</h3></div><div class=\"panel-body\"><ul>"

	#echo "<li>" `xmllint --xpath '//rss/channel/lastBuildDate/text()' $1` "</li>" 

	echo "<li><a href=\"" `xmllint --xpath '//rss/channel/item[1]/link/text()' $1` "\">" `xmllint --xpath '//rss/channel/item[1]/title/text()' $1` "</a></li>"
	echo "<li><a href=\"" `xmllint --xpath '//rss/channel/item[2]/link/text()' $1` "\">" `xmllint --xpath '//rss/channel/item[2]/title/text()' $1` "</a></li>"
	echo "<li><a href=\"" `xmllint --xpath '//rss/channel/item[3]/link/text()' $1` "\">" `xmllint --xpath '//rss/channel/item[3]/title/text()' $1` "</a></li>"
	echo "<li><a href=\"" `xmllint --xpath '//rss/channel/item[4]/link/text()' $1` "\">" `xmllint --xpath '//rss/channel/item[4]/title/text()' $1` "</a></li>"
	echo "<li><a href=\"" `xmllint --xpath '//rss/channel/item[5]/link/text()' $1` "\">" `xmllint --xpath '//rss/channel/item[5]/title/text()' $1` "</a></li>"
	echo "<li><a href=\"" `xmllint --xpath '//rss/channel/item[6]/link/text()' $1` "\">" `xmllint --xpath '//rss/channel/item[6]/title/text()' $1` "</a></li>"
	echo "<li><a href=\"" `xmllint --xpath '//rss/channel/item[7]/link/text()' $1` "\">" `xmllint --xpath '//rss/channel/item[7]/title/text()' $1` "</a></li>"
	echo "<li><a href=\"" `xmllint --xpath '//rss/channel/item[8]/link/text()' $1` "\">" `xmllint --xpath '//rss/channel/item[8]/title/text()' $1` "</a></li>"
	echo "<li><a href=\"" `xmllint --xpath '//rss/channel/item[9]/link/text()' $1` "\">" `xmllint --xpath '//rss/channel/item[9]/title/text()' $1` "</a></li>"
	echo "<li><a href=\"" `xmllint --xpath '//rss/channel/item[10]/link/text()' $1` "\">" `xmllint --xpath '//rss/channel/item[10]/title/text()' $1` "</a></li>"

	echo "</ul></div></div>"
}

function do_footer
{
	echo "</div></div></body></html>"
}

# Main code
##############

# header
do_header

# output 4 columns (col-sm-X - X adds up to 12)
echo "<div class=\"col-sm-4\">"
do_file feed/1.xml;
do_file feed/2.xml;
do_file feed/3.xml;
do_file feed/4.xml;
do_file feed/5.xml;
do_file feed/6.xml;
do_file feed/7.xml;
do_file feed/8.xml;
do_file feed/9.xml;
do_file feed/10.xml;
echo "</div><!-- /.col-sm-4 -->"
###
echo "<div class=\"col-sm-4\">"
do_file feed/11.xml;
do_file feed/12.xml;
do_file feed/13.xml;
do_file feed/14.xml;
do_file feed/15.xml;
do_file feed/16.xml;
do_file feed/17.xml;
do_file feed/18.xml;
do_file feed/19.xml;
do_file feed/20.xml;
echo "</div><!-- /.col-sm-4 -->"
###
echo "<div class=\"col-sm-4\">"
do_file feed/21.xml;
do_file feed/22.xml;
do_file feed/23.xml;
do_file feed/24.xml;
do_file feed/25.xml;
do_file feed/26.xml;
do_file feed/27.xml;
echo "</div><!-- /.col-sm-3 -->"
###

# footer
do_footer



