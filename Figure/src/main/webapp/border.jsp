<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
<button onclick="location.href='size.jsp'">테두리 남기기 페이지</button >
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


<table style="position:absolute;top:40px;bottom:0;left:0;right:0;">
		<%
		int exarr[] = new int[101];
		for (int i = 0; i < 10; i++) {
		%><tr>
			<%
			for (int j = 0; j < 10; j++) {	
				int r = i*10 + j+1;
					if(r==1 || r==2|| r==3|| r==4 || r==11|| r==12 || r==13|| r==14|| r==23|| r==24
						|| r==33|| r==34 || r==43||r==44|| r==45|| r==46|| r==47|| r==48|| r==53
						|| r==54|| r==55|| r==56|| r==57|| r==58 || r==67|| r==68|| r==77|| r==78
						|| r==87|| r==88|| r==89|| r==90|| r==97|| r==98|| r==99|| r==100){
						%>
						<td bgcolor="#0080ff"></td>
						<%	
					}
					else{
						%><td></td><% 
					}
				}
			}
		
			%>
		</tr>
	</table>
	<%
	
	if (request.getMethod().equals("POST")) {
		int row1 = 10, col1 = 10;
		row1 = Integer.parseInt(request.getParameter("row"));
		col1 = Integer.parseInt(request.getParameter("col"));
		
		int arr[] = new int[10000];
		int count = 0;

		int r1 = row1 * 4 / 10;
		int c1 = col1 * 2 / 10;

		int r2 = row1 * 2 / 10;
		int c2 = col1 * 6 / 10;

		int c3 = col1 * 4 / 10;
		int r3 = row1 * 8 / 10;

		int r4 = row1 * 2 / 10;
		int r5 = row1 * 6 / 10;

		int c4 = col1 * 8 / 10;
		for (int k = 1; k <= col1 * row1; k++) {//전체 갯수
			for (int n = 0; n <= c1 - 1; n++) { //colunms 갯수
				if (k <= r1 || row1 * n < k && k < row1 * n + r1 + 1) {//row 조건문
				arr[k] = 1;
				}
			}
		}
		for (int q = 1; q <= col1 * row1; q++) {
			for (int w = c1; w <= c2 - 1; w++) {
				if (row1 * w + r4 < q && q < row1 * w + r1 + 1) {
					arr[q] = 1;
				}
			}
		}
		for (int k = 1; k <= col1 * row1; k++) {
			for (int n = c2 - c1; n < c2; n++) {
				if (k > row1 * n + r1 && k <= row1 * n + r3) {
					arr[k] = 1;
				}
			}
		}
		for (int k = 1; k <= col1 * row1; k++) {
			for (int n = c2; n < col1; n++) {
				if (k > row1 * n + r5 && k <= row1 * n + r3) {
					arr[k] = 1;
				}
			}
		}
		for (int k = 1; k <= col1 * row1; k++) {
			for (int n = c4; n < col1; n++) { 
				if (k > row1 * n + r5 && k <= row1 * n + row1) {
					arr[k] = 1;
				}
			}
		}
	%>
	<table style="position:absolute;top:40px;bottom:0;left:500px;right:0;">
		<%
		int num;
		for (int i = 0; i < col1; i++) {
		%><tr>
			<%
			for (int j = 0; j < row1; j++) {
				num = i * row1 + j + 1;
				if ((arr[num]) == 1) {
			%>
			<td bgcolor="#0080ff"></td>
			<%
			    } else {
			%><td></td>
			<%
				}
			%>
			<%
			}
		}
	}
			%>
		</tr>
	</table>
	
	
	<form method="post" name="form1" style="position:absolute;top:5px;bottom:0;left:300px;right:0;">
		가로<input type="text" name="col">세로 
		<input type="text"name="row"> <input type="submit" value="그리기" name="draw">		
		<p>
	</form>
	<p style="position:absolute;top:260px;bottom:0;left:90px;right:0;"> 원본
</body>
</html>