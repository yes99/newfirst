function alerttest(){
/*
    var date = '<%=date%>';
    var title = '<%=title%>';
    var assign = '<%=assign%>';
    var perform = '<%=perform%>';
    var fail = '<%=fail%>';
*/

    var date = document.getElementById('date').value;
    var title = document.getElementById('title').value;
    var assign = document.getElementById('assign').value;
    var perform = document.getElementById('perform').value;
    var fail = document.getElementById('fail').value;

    var hdate = document.getElementById('hdate').innerHTML;
    var htitle = document.getElementById('htitle').innerHTML;
    console.log(hdate, htitle);

    if(!date)
    {
        hdate.style.visibility = "visible";
        alert("stop");
        event.preventDefault();
    }
    if(!title)
    {
        htitle.style.visibility = "visible";
        alert("stop");
        event.preventDefault();
    }

/*
    if(!assign ||!perform ||!fail )
        {

            event.preventDefault();

            return 0
        }
        else{
            alert("full");
        }
*/

    console.log(date, title, assign, perform, fail);

    console.log("hihihihihihihihihi");
}