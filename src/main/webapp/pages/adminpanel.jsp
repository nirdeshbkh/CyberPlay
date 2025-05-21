<%@ taglib prefix="c" uri="http://xmlns.jcp.org/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- ... your existing head ... -->
</head>
<body class="admin-body">

<div class="admin-wrapper">
  <!-- ... your existing sidebar ... -->

  <main class="admin-main">
    <!-- ... your existing header ... -->

    <div class="admin-content">
      <!-- ... existing stats/cards/charts ... -->

      <!-- === Add Category === -->
      <div id="categories" class="section">
        <div class="section-header">
          <h3 class="section-title">Add New Category</h3>
        </div>
        <form action="${pageContext.request.contextPath}/addcategory" method="post" class="admin-form">
          <label for="new-cat-name">Name</label>
          <input type="text" id="new-cat-name" name="name" required
            placeholder="Enter category name…" />
          <button type="submit" class="cyber-button">Add Category</button>
        </form>
      </div>

      <!-- === Manage Categories === -->
      <div class="section">
        <div class="section-header">
          <h3 class="section-title">Manage Categories</h3>
        </div>
        <table class="admin-table">
          <thead>
            <tr>
              <th>ID</th>
              <th>Name</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="cat" items="${categories}">
              <tr>
                <td>${cat.id}</td>
                <td>${cat.name}</td>
                <td>
                  <form action="${pageContext.request.contextPath}/deletecategory" method="post" style="display:inline">
                    <input type="hidden" name="id" value="${cat.id}" />
                    <button type="submit" class="table-action-btn" 
                            onclick="return confirm('Delete category &quot;${cat.name}&quot;?')">
                      <i data-lucide="trash-2"></i>
                    </button>
                  </form>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>

      <!-- === Manage Posts === -->
      <div class="section">
        <div class="section-header">
          <h3 class="section-title">Manage Posts</h3>
        </div>
        <table class="admin-table">
          <thead>
            <tr>
              <th>ID</th>
              <th>Title</th>
              <th>Category</th>
              <th>Author</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="post" items="${posts}">
              <tr>
                <td>${post.id}</td>
                <td>${post.title}</td>
                <td>${post.category}</td>
                <td>${post.username}</td>
                <td>
                  <form action="${pageContext.request.contextPath}/deletepost" method="post" style="display:inline">
                    <input type="hidden" name="id" value="${post.id}" />
                    <button type="submit" class="table-action-btn" 
                            onclick="return confirm('Delete post &quot;${post.title}&quot;?')">
                      <i data-lucide="trash-2"></i>
                    </button>
                  </form>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>

      <!-- ... any remaining quick-actions / status sections ... -->
    </div>
  </main>
</div>

<script>
  lucide.createIcons();
  document.querySelector('.toggle-sidebar').addEventListener('click',function(){
    document.querySelector('.admin-wrapper').classList.toggle('sidebar-collapsed');
  });
</script>
</body>
</html>

