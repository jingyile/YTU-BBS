<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>菜单</title>
</head>
<body>
	<form action="page.jsp" mothed="get">
		<div id="divmenu">
			<button type="submit" name="tid" value="1">计控</button>
			<button type="submit" name="tid" value="2">人文</button>
			<button type="submit" name="tid" value="3">经管</button>
			<button type="submit" name="tid" value="4">法院</button>
			<button type="submit" name="tid" value="5">化院</button>
			<button type="submit" name="tid" value="6">数院</button>
			<button type="submit" name="tid" value="7">生科</button>
			<button type="submit" name="tid" value="8">海院</button>
			<button type="submit" name="tid" value="9">土木</button>
			<button type="submit" name="tid" value="10">机电</button>
			<button type="submit" name="tid" value="11">光电</button>
			<button type="submit" name="tid" value="12">药院</button>
			<button type="submit" name="tid" value="13">环材</button>
			<button type="submit" name="tid" value="14">音舞</button>
			<a href="#" style="color: #FFFF00">全部学院目录</a>
		</div>
	</form>
	<div id="divsearch">
		<form action="#" id="searchform">
			<table style="width: 100%; border: 0; cellspacing: 0">
				<tr>
					<td style="text-align: right; padding-right: 220px">Search <input
						type="text" name="textfield" class="inputtable" id="textfield"
						value="请输入关键字" onmouseover="this.focus();"
						onclick="my_click(this, 'textfield');"
						onBlur="my_blur(this, 'textfield');" /> <a href="#"> <img
							src="images/serchbutton.gif" border="0"
							style="margin-bottom: -4px" onclick="search()" />
					</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>