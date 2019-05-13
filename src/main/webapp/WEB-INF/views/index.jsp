
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->

            <form action="saveNote" method="post">
            		Note Id:<br> <input type="text" name="Id"> <br>
            		Title:<br> <input type="text" name="Title"> <br>
            		Content:<br> <input type="text" name="Content"> <br>
            		Status:<br>
            		       <select id="noteStatus" name= "noteStatus">
                           		  <option value="active">Active</option>
                           		  <option value="inactive">Inactive</option>
                           	  </select>
            		<input type="submit" value="Submit note">
            	</form>
	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->

	<table>
	    <tr>
	            <td>Note id</td>
	            <td>Title</td>
	            <td>Content</td>
	            <td>Status</td>
	            <td>Created date</td>
	            <td>Action</td>
	    </tr>
	   <c:forEach items="${note}" var="note">
       			<tr>
       				<td><c:out value="${note.noteId}" /></td>
       				<td><c:out value="${note.noteTitle}" /></td>
       				<td><c:out value="${note.noteContent}" /></td>
       				<td><c:out value="${note.getNoteStatus}" /></td>
       				<td><c:out value="${note.getNoteCreatedAt}" /></td>
       				<td><input type="button" value="Delete"></th>
       			</tr>
       		</c:forEach>
	</table>
</body>
</html>