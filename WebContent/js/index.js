function tableToCSV() {

	var csv_data = [];
	
	var rows = document.getElementsByTagName('tr');
	for (var i = 0; i < rows.length; i++) {
		var cols = rows[i].querySelectorAll('td,th');

		var csvrow = [];
		for (var j = 0; j < cols.length; j++) {
			csvrow.push(cols[j].innerHTML);
		}
		csv_data.push(csvrow.join(","));
	}
	csv_data = csv_data.join('\n');

	downloadCSVFile(csv_data);
}

function downloadCSVFile(csv_data) {
	CSVFile = new Blob(["\uFEFF"+csv_data], { type: 'text/csv;charset=utf-8;' });


	var temp_link = document.createElement('a');

	temp_link.download = "kqxs.csv";
	var url = window.URL.createObjectURL(CSVFile);
	temp_link.href = url;

	temp_link.style.display = "none";
	document.body.appendChild(temp_link);

	temp_link.click();
	document.body.removeChild(temp_link);
}

function fnExcelReport()
{
    var tab_text="<table border='2px'><tr bgcolor='#87AFC6'>";
    var textRange; var j=0;
    tab = document.getElementById('tableXX'); // id of table

    for(j = 0 ; j < tab.rows.length ; j++) 
    {     
        tab_text=tab_text+tab.rows[j].innerHTML+"</tr>";
        //tab_text=tab_text+"</tr>";
    }

    tab_text=tab_text+"</table>";
    tab_text= tab_text.replace(/<A[^>]*>|<\/A>/g, "");//remove if u want links in your table
    tab_text= tab_text.replace(/<img[^>]*>/gi,""); // remove if u want images in your table
    tab_text= tab_text.replace(/<input[^>]*>|<\/input>/gi, ""); // reomves input params

    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE "); 

    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
    {
        txtArea1.document.open("txt/html","replace");
        txtArea1.document.write(tab_text);
        txtArea1.document.close();
        txtArea1.focus(); 
        sa=txtArea1.document.execCommand("SaveAs",true,"Say Thanks to Sumit.xls");
    }  
    else                 //other browser not tested on IE 11
        sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));  

    return (sa);
}