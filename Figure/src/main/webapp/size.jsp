<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>테두리 남기기</title>
</head>
<body>
<style>
table {
	border-collapse: collapse;
	
}

td {
	border: 1px solid black;
	width: 20px;
	height: 20px;
	text-align: center;
}
</style>
<button onclick="location.href='border.jsp'"
style="position:absolute;top:10px;bottom:1;left:1150px;right:1;">사이즈 조절 페이지</button >
	<table align="left">
		<%
		int arr[] = new int [431];
		int arr1[] = new int [401];
		
		int r = 0;
		for (int i = 0; i < 20; i++) {//세로
			%><tr>
			<% 
			for(int j =0; j < 20; j++){		//가로
				r = i*20 + j+1;
				if( 3<r&&r<21 || r>27 && r<32 || r >32 && r<41 || r>54 && r<61  ||r == 81
					||r == 82 ||r == 101 ||r == 121 ||r ==141 ||r == 152 ||r == 153 ||r == 160 
					||r == 161 || r>168 && r<174 ||r == 180 ||r == 181 || r>188 && r<193 ||r == 200
					||r == 201 || r>208 && r<213 ||r>218 && r<224 || r>228 && r<233 ||r == 228 
					||r == 239 ||r == 240||r == 208 || r>240 && r<244 ||r == 248 ||r == 249 
					||r>260 && r<264  ||r == 268 ||r == 269 || r>280 && r<284|| r>320 && r<324
					||r == 333 ||r == 334 ||r == 336 |r == 337 ||r == 341 ||r == 353 ||r == 354
					||r == 356 ||r == 357 ||r ==361 || r>372 && r<382 ||r > 386 && r < 401 ){
					%>
			<td></td>
			<%
				}
				else{
					arr[r]= 1;
					%>
			<td bgcolor="#0080ff"></td>
			<%
				}
		%>
			<%
			}
			%>
		</tr>
		<%
		}
		%>	</table> 
		
		<% for (int i =21; i < 400; i ++){
			arr1[i] = 2;
			if(arr[i]==arr[i-20] && arr[i]==arr[i+20] && arr[i]==arr[i-1] 
					&& arr[i]==arr[i+1]&& i != 21&& i%20!=0){
				arr1[i] = 0;
			}
		 }%>
		 	
		<% for (int i =21; i < 400; i ++){
			if(arr1[i]==0){
				arr[i] = 0;
			}
		 }%>
	<table style="position:absolute;top:10px;bottom:0;left:600px;right:0;"> 
		<%
		for (int i = 0; i < 20; i++) {
			%><tr>
			<% 
			for(int j =0; j < 20; j++){		
				r = i*20 + j+1;
				if((arr[r]) == 1){
					%>
					<td bgcolor="#0080ff"></td>
					<%								
				}
				else{
					%><td></td><% 
				}
					%><%
			}
		}	
			%>
		</tr>
	</table>
	
	<!-- 여기부터 F -->
	<p>
	<table align="left" style="position:absolute;top:500;bottom:0;left:10px;right:0;">
		<%
		int F[] = new int [431];
		int F1[] = new int [401];
		
		int num = 0;
		for (int i = 0; i < 20; i++) {
			%><tr>
			<% 
			for(int j =0; j < 20; j++){		
				num = i*20 + j+1;
				if( num<81 || num%20 ==1|| num%20 ==2|| num%20 ==3|| num%20 ==4|| 164<num&&num<177
						|| 184<num&&num<197|| 204<num&&num<217|| 224<num&&num<237){
					%>
			<td bgcolor="#0080ff"></td>
			<%
			F[num]= 1;
				}
				else{
					
					%>
			<td></td>
			<%
				}
		%>
			<%
			}
			%>
		</tr>
		<%
		}
		%>	</table> 
		
		<% for (int i =21; i < 400; i ++){
			F1[i] = 2;
			if(F[i]==F[i-20] && F[i]==F[i+20] && F[i]==F[i-1] && F[i]==F[i+1]&& i != 21 && i%20!=0 && i%20!=1){
				F1[i] = 0;
			}
		 }%>
		 	
		<% for (int i =21; i < 400; i ++){
			if(F1[i]==0){
				F[i] = 0;
			}
		 }%>
	<table style="position:absolute;top:500;bottom:0;left:600px;right:0;"> 
		<%
		for (int i = 0; i < 20; i++) {
			%><tr>
			
			<% 
			for(int j =0; j < 20; j++){		
				num = i*20 + j+1;
				if((F[num]) == 1){
					%>
					<td bgcolor="#0080ff"></td>
					<%								
				}
				else{
					%><td></td><% 
				}
					%>
			<%		
			}
		}	
			%>
		</tr>
	</table>	
</body>
</html>