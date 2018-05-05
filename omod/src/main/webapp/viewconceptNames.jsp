<%@ include file="/WEB-INF/template/include.jsp"%>

<%@ include file="/WEB-INF/template/header.jsp"%>

<form method = GET>
  CHOOSE A CONCEPT : <openmrs_tag:conceptField  formFieldName= "conceptId"/>
  <input type ="submit"  value = "view"> </input>
</form>
<br/>
<table>
  <tr>
   <th>CONCEPT ID</th>
   <th>${concept.conceptId} </th>
  </tr>
  
  <tr> 
       <th>UUID</th>
       <th>${concept.uuid}</th>
  
  </tr>
  
 
      <tr>
        <th> NAMES</th>
        <td>
          <table border="1">
               <tr>
                    <th>Locale </th>
                    <th>Prefered</th>
                    <th>Type</th>
                    <th>Nmae</th>
                     <th>Tags</th>
               </tr>
                <c:forEach var="cn" items="${concept.names}">
                    <tr>
                       <td>${cn.locale } </td>
                        <td>${ cn.localePreferred } </td>
                       <td>${ cn.conceptNameType } </td>
                        <td> <c:out  escapeXml ="true" value="${cn.name}"/></td>
                       <td>
                        <c:forEach var="t" items="${cn.tags}">
                       
                          <c:out  escapeXml ="true" value="${t.tag}"/>
                           <c:if test = "${not status.last }"> ,</c:if>
                       </c:forEach>
                       
                       </td>
                     </tr>
                 </c:forEach>
               
          </table>
        </td>
        
      </tr>		
 
</table>

<%@ include file="/WEB-INF/template/footer.jsp"%>
