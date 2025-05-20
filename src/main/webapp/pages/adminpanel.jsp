
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CyberPlay Admin - Dashboard</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;500;600;700;800;900&family=Share+Tech+Mono&display=swap" rel="stylesheet">
     <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/admin.css" />
    <script src="https://unpkg.com/lucide@latest/dist/umd/lucide.js"></script>
</head>
<body class="admin-body">

    <div class="admin-wrapper">
        <!-- Admin Sidebar -->
        <aside class="admin-sidebar">
            <div class="sidebar-header">
                <h1 class="admin-logo">
                    <span class="text-cyber-blue">CYBER PLAY</span>
                    <span class="text-cyber-purple">Admin</span>
                </h1>
                <button class="toggle-sidebar">
                    <i data-lucide="chevron-left"></i>
                </button>
            </div>

            <div class="sidebar-user">
                <div class="user-avatar">
                    <img src="https://i.pravatar.cc/150?img=13" alt="Admin User">
                    <span class="status-indicator online"></span>
                </div>
                <div class="user-info">
                    <h3 class="user-name">Admin</h3>
                    <p class="user-role"><span class="text-cyber-pink">System</span> Admin</p>
                </div>
            </div>

            <nav class="sidebar-nav">
                <ul class="nav-items">
                    <li class="nav-item active">
                        <a href="#dashboard">
                            <i data-lucide="layout-dashboard"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#users">
                            <i data-lucide="users"></i>
                            <span>User Management</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#content">
                            <i data-lucide="message-square"></i>
                            <span>Content Moderation</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#analytics">
                            <i data-lucide="bar-chart"></i>
                            <span>Analytics</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#categories">
                            <i data-lucide="folder"></i>
                            <span>Categories</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#reports">
                            <i data-lucide="flag"></i>
                            <span>Reports</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#settings">
                            <i data-lucide="settings"></i>
                            <span>Settings</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#security">
                            <i data-lucide="shield"></i>
                            <span>Security</span>
                        </a>
                    </li>
                </ul>
            </nav>

            <div class="sidebar-footer">
                <a href="index.jsp" class="cyber-button sm">
    <i data-lucide="log-out"></i>
    <span>Log Out</span>
</a>
                <p class="version-info">v1.0.2</p>
            </div>
        </aside>

        <!-- Admin Main Content -->
        <main class="admin-main">
            <header class="admin-header">
                <div class="header-search">
                    <i data-lucide="search"></i>
                    <input type="text" class="cyber-input sm" placeholder="Search forums, users, posts...">
                </div>
                
                <div class="header-actions">
                    <button class="action-btn">
                        <i data-lucide="bell"></i>
                        <span class="notification-badge">3</span>
                    </button>
                    <button class="action-btn">
                        <i data-lucide="mail"></i>
                        <span class="notification-badge">5</span>
                    </button>
                    <button class="action-btn">
                        <i data-lucide="help-circle"></i>
                    </button>
                </div>
            </header>

            <div class="admin-content">
                <div class="content-header">
                    <h2 class="page-title">Dashboard <span class="text-cyber-blue">Overview</span></h2>
                    <div class="header-actions">
                        <span class="date-display">May 03, 2025</span>
                        <div class="actions-dropdown">
                            <button class="cyber-button sm">
                                <span>Last 7 Days</span>
                                <i data-lucide="chevron-down"></i>
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Stats Cards -->
                <div class="stats-grid">
                    <div class="stat-card border-cyber-blue">
                        <div class="stat-header">
                            <h3 class="stat-title">Total Users</h3>
                            <div class="stat-icon bg-cyber-blue-faded">
                                <i data-lucide="users" class="text-cyber-blue"></i>
                            </div>
                        </div>
                        <div class="stat-content">
                            <p class="stat-value">25,647</p>
                            <p class="stat-change positive">+12.5% <span>vs last week</span></p>
                        </div>
                    </div>

                    <div class="stat-card border-cyber-purple">
                        <div class="stat-header">
                            <h3 class="stat-title">Active Posts</h3>
                            <div class="stat-icon bg-cyber-purple-faded">
                                <i data-lucide="message-square" class="text-cyber-purple"></i>
                            </div>
                        </div>
                        <div class="stat-content">
                            <p class="stat-value">8,392</p>
                            <p class="stat-change positive">+8.2% <span>vs last week</span></p>
                        </div>
                    </div>

                    <div class="stat-card border-cyber-green">
                        <div class="stat-header">
                            <h3 class="stat-title">New Members</h3>
                            <div class="stat-icon bg-cyber-green-faded">
                                <i data-lucide="user-plus" class="text-cyber-green"></i>
                            </div>
                        </div>
                        <div class="stat-content">
                            <p class="stat-value">1,247</p>
                            <p class="stat-change positive">+22.8% <span>vs last week</span></p>
                        </div>
                    </div>

                    <div class="stat-card border-cyber-red">
                        <div class="stat-header">
                            <h3 class="stat-title">Reported Content</h3>
                            <div class="stat-icon bg-cyber-red-faded">
                                <i data-lucide="alert-triangle" class="text-cyber-red"></i>
                            </div>
                        </div>
                        <div class="stat-content">
                            <p class="stat-value">43</p>
                            <p class="stat-change negative">+15.4% <span>vs last week</span></p>
                        </div>
                    </div>
                </div>

                <!-- Charts Section -->
                <div class="charts-section">
                    <div class="chart-card">
                        <div class="chart-header">
                            <h3 class="chart-title">User Activity</h3>
                            <div class="chart-actions">
                                <button class="chart-action-btn active">Daily</button>
                                <button class="chart-action-btn">Weekly</button>
                                <button class="chart-action-btn">Monthly</button>
                            </div>
                        </div>
                        <div class="chart-body">
                            <!-- This would be replaced with an actual chart in a real implementation -->
                            <div class="placeholder-chart">
                                <div class="chart-bar" style="height: 40%;"></div>
                                <div class="chart-bar" style="height: 60%;"></div>
                                <div class="chart-bar" style="height: 80%;"></div>
                                <div class="chart-bar" style="height: 70%;"></div>
                                <div class="chart-bar" style="height: 65%;"></div>
                                <div class="chart-bar" style="height: 90%;"></div>
                                <div class="chart-bar" style="height: 75%;"></div>
                            </div>
                        </div>
                    </div>

                    <div class="chart-card">
                        <div class="chart-header">
                            <h3 class="chart-title">Category Distribution</h3>
                            <div class="chart-actions">
                                <button class="chart-action-btn">
                                    <i data-lucide="download"></i>
                                    <span>Export</span>
                                </button>
                            </div>
                        </div>
                        <div class="chart-body">
                            <!-- This would be replaced with an actual chart in a real implementation -->
                            <div class="placeholder-pie-chart">
                                <div class="pie-segment seg1"></div>
                                <div class="pie-segment seg2"></div>
                                <div class="pie-segment seg3"></div>
                                <div class="pie-segment seg4"></div>
                                <div class="pie-center"></div>
                            </div>
                            <div class="chart-legend">
                                <div class="legend-item">
                                    <span class="legend-color bg-cyber-blue"></span>
                                    <span class="legend-text">FPS Games (28%)</span>
                                </div>
                                <div class="legend-item">
                                    <span class="legend-color bg-cyber-purple"></span>
                                    <span class="legend-text">RPG (23%)</span>
                                </div>
                                <div class="legend-item">
                                    <span class="legend-color bg-cyber-green"></span>
                                    <span class="legend-text">MMORPG (19%)</span>
                                </div>
                                <div class="legend-item">
                                    <span class="legend-color bg-cyber-yellow"></span>
                                    <span class="legend-text">Others (30%)</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Recent Activity -->
                <div class="activity-section">
                    <div class="section-header">
                        <h3 class="section-title">Recent Activity</h3>
                        <button class="cyber-button sm">
                            <span>View All</span>
                            <i data-lucide="arrow-right"></i>
                        </button>
                    </div>
                    
                    <div class="activity-table-wrapper">
                        <table class="activity-table">
                            <thead>
                                <tr>
                                    <th>User</th>
                                    <th>Action</th>
                                    <th>Target</th>
                                    <th>Time</th>
                                    <th>Status</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="user-cell">
                                            <img src="https://i.pravatar.cc/150?img=3" alt="SynthWave">
                                            <span>SynthWave</span>
                                        </div>
                                    </td>
                                    <td>Created post</td>
                                    <td>"Upcoming Cyberpunk DLC Leak"</td>
                                    <td>10 min ago</td>
                                    <td><span class="status-badge success">Approved</span></td>
                                    <td>
                                        <button class="table-action-btn">
                                            <i data-lucide="more-horizontal"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="user-cell">
                                            <img src="https://i.pravatar.cc/150?img=4" alt="NetRunner42">
                                            <span>NetRunner42</span>
                                        </div>
                                    </td>
                                    <td>Updated profile</td>
                                    <td>Account settings</td>
                                    <td>25 min ago</td>
                                    <td><span class="status-badge success">Completed</span></td>
                                    <td>
                                        <button class="table-action-btn">
                                            <i data-lucide="more-horizontal"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="user-cell">
                                            <img src="https://i.pravatar.cc/150?img=5" alt="CyberSamurai">
                                            <span>CyberSamurai</span>
                                        </div>
                                    </td>
                                    <td>Reported post</td>
                                    <td>"Cheat codes for multiplayer"</td>
                                    <td>45 min ago</td>
                                    <td><span class="status-badge warning">Pending</span></td>
                                    <td>
                                        <button class="table-action-btn">
                                            <i data-lucide="more-horizontal"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="user-cell">
                                            <img src="https://i.pravatar.cc/150?img=6" alt="NeonBlade">
                                            <span>NeonBlade</span>
                                        </div>
                                    </td>
                                    <td>New member</td>
                                    <td>Account creation</td>
                                    <td>1 hour ago</td>
                                    <td><span class="status-badge success">Verified</span></td>
                                    <td>
                                        <button class="table-action-btn">
                                            <i data-lucide="more-horizontal"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="user-cell">
                                            <img src="https://i.pravatar.cc/150?img=7" alt="QuantumPixel">
                                            <span>QuantumPixel</span>
                                        </div>
                                    </td>
                                    <td>Flagged content</td>
                                    <td>"How to hack game servers"</td>
                                    <td>3 hours ago</td>
                                    <td><span class="status-badge error">Removed</span></td>
                                    <td>
                                        <button class="table-action-btn">
                                            <i data-lucide="more-horizontal"></i>
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Quick Actions -->
                <div class="quick-actions-section">
                    <div class="section-header">
                        <h3 class="section-title">Quick Actions</h3>
                    </div>
                    <div class="action-cards">
                        <div class="action-card">
                            <div class="action-icon bg-cyber-blue-faded">
                                <i data-lucide="user-plus" class="text-cyber-blue"></i>
                            </div>
                            <h4 class="action-title">Add User</h4>
                            <p class="action-description">Create new admin or moderator account</p>
                        </div>
                        <div class="action-card">
                            <div class="action-icon bg-cyber-purple-faded">
                                <i data-lucide="message-circle" class="text-cyber-purple"></i>
                            </div>
                            <h4 class="action-title">New Announcement</h4>
                            <p class="action-description">Post important news to all users</p>
                        </div>
                        <div class="action-card">
                            <div class="action-icon bg-cyber-green-faded">
                                <i data-lucide="folder-plus" class="text-cyber-green"></i>
                            </div>
                            <h4 class="action-title">Create Category</h4>
                            <p class="action-description">Add new forum category or subcategory</p>
                        </div>
                        <div class="action-card">
                            <div class="action-icon bg-cyber-yellow-faded">
                                <i data-lucide="calendar" class="text-cyber-yellow"></i>
                            </div>
                            <h4 class="action-title">Schedule Event</h4>
                            <p class="action-description">Create new community event</p>
                        </div>
                    </div>
                </div>
                
                <!-- System Status -->
                <div class="status-section">
                    <div class="section-header">
                        <h3 class="section-title">System Status</h3>
                        <span class="status-indicator-text online">All Systems Operational</span>
                    </div>
                    <div class="status-cards">
                        <div class="status-card">
                            <div class="status-header">
                                <h4>Server Load</h4>
                                <span class="status-value">42%</span>
                            </div>
                            <div class="progress-bar">
                                <div class="progress-fill" style="width: 42%"></div>
                            </div>
                        </div>
                        <div class="status-card">
                            <div class="status-header">
                                <h4>Database</h4>
                                <span class="status-value">92%</span>
                            </div>
                            <div class="progress-bar warning">
                                <div class="progress-fill" style="width: 92%"></div>
                            </div>
                        </div>
                        <div class="status-card">
                            <div class="status-header">
                                <h4>Storage</h4>
                                <span class="status-value">68%</span>
                            </div>
                            <div class="progress-bar">
                                <div class="progress-fill" style="width: 68%"></div>
                            </div>
                        </div>
                        <div class="status-card">
                            <div class="status-header">
                                <h4>API Status</h4>
                                <span class="status-indicator-text online">Online</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

    <script>
        // Initialize Lucide icons
        lucide.createIcons();
        
        // Toggle sidebar
        document.querySelector('.toggle-sidebar').addEventListener('click', function() {
            document.querySelector('.admin-wrapper').classList.toggle('sidebar-collapsed');
        });
        
        // Add interactive functionality here for a real implementation
    </script>
</body>
</html>