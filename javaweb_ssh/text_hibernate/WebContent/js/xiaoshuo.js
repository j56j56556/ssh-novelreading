function allvt()
{this.value=new Array();
this.emvalue=new Array();
for(i=1;i<5;i++)
{this.value[i]=0;}
this.value[0]=1;
for(i=1;i<5;i++)
{this.emvalue[i]=0;}
this.emvalue[0]=1;
}
var button=new allvt();
function mainlk(a)
{for(i=0;i<5;i++)
		{
		if(button.value[i]==1)
		{break;}
		}
	var divchild=document.getElementsByClassName("div3-header-div1")[0].children[i];
	button.value[i]=0;
	divchild.style.color="#333";
	var divchild=document.getElementsByClassName("div3-header-div1")[0].children[a];
	button.value[a]=1;
	divchild.style.color="#f60";
	mainlkimg(a,-1)
}
function mainlkimg(a,b)
{if(b==-1)
{b=0;
for(i=0;i<3;i++)
		{
		if(button.emvalue[i]==1)
		{break;}
		}
	var divchild=document.getElementsByClassName("div3-bodyleft-div1-xiaxuank-div")[0].children[i];
	divchild.style.backgroundColor="white";
	button.emvalue[i]=0;
	var divchild=document.getElementsByClassName("div3-bodyleft-div1-xiaxuank-div")[0].children[0];
	divchild.style.backgroundColor="#f60";
	button.emvalue[0]=1;
}
var parent=document.getElementById("div3-bodyleft-div1");
var borther=document.getElementById("div3-bodyleft-div1-xiaxuank");
var child=document.getElementById("div3-bodyleft-div1-img");
parent.removeChild(child);
var childa=document.createElement("a");
var childimg=document.createElement("img");
childa.setAttribute("class","div3-bodyleft-div1-img");

childa.setAttribute("id","div3-bodyleft-div1-img");
childa.href="";
childimg.src=imgbox[a][b];
childa.appendChild(childimg);
parent.insertBefore(childa,parent.firstChild);
clearTimeout(clock);
clock=setInterval("anemk()","3000");
}

function emk(a)
{for(i=0;i<3;i++)
		{
		if(button.emvalue[i]==1)
		{break;}
		}
	var divchild=document.getElementsByClassName("div3-bodyleft-div1-xiaxuank-div")[0].children[i];
	divchild.style.backgroundColor="white";
	button.emvalue[i]=0;
	
	var divchild=document.getElementsByClassName("div3-bodyleft-div1-xiaxuank-div")[0].children[a];
	button.emvalue[a]=1;
	divchild.style.backgroundColor="#f60";
	
	for(x=0;x<10;x++)
		{
		if(button.value[x]==1)
		{break;}
		}
	mainlkimg(x,a)

}

function anemk()
{for(i=0;i<3;i++)
		{
		if(button.emvalue[i]==1)
		{break;}
		}
		if(i==2)
		{emk(0);}
		else
		{emk(i+1);}
}
clock=setInterval("anemk()","3000");
function dldtk(a)
{	

	for(i=0;i<4;i++)
	{
		var divchild=document.getElementsByClassName("div3-bodyleft-div2-dl")[0].children[i];
		if(divchild.className=="now")
		{divchild.setAttribute("class","");
		var dlchild=document.getElementsByClassName("div3-bodyleft-div2-dl2")[0].children[i];
		dlchild.setAttribute("class","div3-bodyleft-div2-dl2-dd");
		break;
		}
	}
	var divchild=document.getElementsByClassName("div3-bodyleft-div2-dl")[0].children[a];
	var dlchild=document.getElementsByClassName("div3-bodyleft-div2-dl2")[0].children[a];
	dlchild.setAttribute("class","div3-bodyleft-div2-dl2-dd-now");
	divchild.setAttribute("class","now");
}

function shoulugouzao(i,k)
{var parent=document.getElementsByClassName("div5")[0].children[k];
var id;
var k;
switch(k)
{
	case 1:id="textsanmao";break;
	case 2:id="textcixin";parent.style.display="none";break;
	case 3:id="textjinnian";parent.style.display="none";break;
}
var zhuangtai="none";
if(i==0)
{zhuangtai="block";}
var n=document.getElementById(id+"num").value;

k=(n-n%3)/3;
if(k==i)
{i=i*3;
n=n%3+i;
}
else
{i=i*3;
n=i+3
}

console.log(n);
for(i;i<n;i++)
{var divchild=document.createElement("div");
divchild.setAttribute("class","div5-body-content")
divchild.style.display=zhuangtai;
var child1=document.createElement("a");
child1.href="readchapter.jsp?"+"fno="+document.getElementById(id+"fno"+i).value;
var child2=document.createElement("img");
child2.src="img/"+document.getElementById(id+"src"+i).value;
var child3=document.createElement("span");
child3.innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;"+document.getElementById(id+i).value;
child1.appendChild(child2);
child1.appendChild(child3);	
divchild.appendChild(child1);
parent.appendChild(divchild);
}
}
function divemk5(a)
{var n,i,j,k;

	for(j=0;j<3;j++)
		{var divchild1=document.getElementsByClassName("div5-header-div1")[0].children[j];
			
			if(divchild1.className=="now")				
			{break;
			}	
			
		}
		k=document.getElementsByClassName("div5-body")[j].children.length;
		console.log(j);
	for(i=0;i<3;i++)
		{var divchild1=document.getElementsByClassName("div5-body-bottom")[0].children[i];
			divchild1.style.backgroundColor="white"
		}
	var divchild1=document.getElementsByClassName("div5-body-bottom")[0].children[a];
		divchild1.style.backgroundColor="#f60";
		
	for(i=0;i<k;i++)
		{
			var divchild=document.getElementsByClassName("div5-body")[j].children[i];
			divchild.style.display="none";
		}
		
		n=(k-k%3)/3;
		if(k==a)
		{i=a*3;
		k=k%3+i;
		}
		else
		{i=a*3;
		k=i+3
		}
	for(;i<k;i++)
		{	
			var divchild=document.getElementsByClassName("div5-body")[j].children[i];
			divchild.style.display="block";
		}
}
function divheadmenu5(a)
{	for(i=0;i<3;i++)
		{var divchild1=document.getElementsByClassName("div5-header-div1")[0].children[i];
			divchild1.setAttribute("class","");
		var divchild=document.getElementsByClassName("div5-body")[i];
			divchild.style.display="none";	
		}
		
		var divchild1=document.getElementsByClassName("div5-header-div1")[0].children[a];
				divchild1.setAttribute("class","now");
		var divchild=document.getElementsByClassName("div5-body")[a];
				divchild.style.display="block";				
		divemk5(0);
}


