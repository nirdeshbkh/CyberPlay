<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Create New Post - Cyber Play</title>
   <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/aboutus.css" />

  
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', sans-serif;
    }

    body {
      background-color: #0d1117;
      color: #e6edf3;
    }

    .container {
      display: flex;
    }

    /* Sidebar */
    .sidebar {
      width: 230px;
      background-color: #161b22;
      padding: 30px 20px;
      height: 100vh;
      border-right: 1px solid #30363d;
    }

    .logo {
      font-size: 24px;
      font-weight: bold;
      color: #58a6ff;
      margin-bottom: 40px;
      margin-left:6%;
      text-shadow: 0 0 10px #58a6ff;
    }
   :root {
      --cyber-blue:  #3CC1F2;
      --cyber-purple: #9B4DFF;
    }
    .text-cyber-blue {
      color: var(--cyber-blue);
    }

    .text-cyber-purple {
      color: var(--cyber-purple);
    }
    .nav-links {
      display: flex;
      flex-direction: column;
      gap: 15px;
    }

    .nav-links a {
      text-decoration: none;
      padding: 10px 15px;
      border-radius: 6px;
      color: #c9d1d9;
      font-weight: 500;
      transition: all 0.3s ease;
    }

    .nav-links a.active {
      background-color: #238636;
      color: #ffffff;
      text-shadow: 0 0 8px #2ea043;
    }

    .nav-links a:hover {
      background-color: #30363d;
      color: #58a6ff;
    }

    /* Main Content */
    .main-content {
      flex: 1;
      padding: 30px 50px;
      background-color: #0d1117;
    }

    .breadcrumb {
      font-size: 14px;
      color: #8b949e;
      margin-bottom: 20px;
    }

    .breadcrumb a {
      color: #58a6ff;
      text-decoration: none;
    }

    .breadcrumb span {
      color: #8b949e;
    }

    h2 {
      font-size: 26px;
      margin-bottom: 6px;
      color: #ffffff;
      text-shadow: 0 0 8px #58a6ff;
    }

    .subtitle {
      font-size: 14px;
      color: #8b949e;
      margin-bottom: 25px;
    }

    label {
      font-weight: 500;
      margin-top: 15px;
      display: block;
      color: #c9d1d9;
    }

    select,
    input,
    textarea {
      width: 100%;
      padding: 10px 12px;
      font-size: 15px;
      border: 1px solid #30363d;
      border-radius: 6px;
      background-color: #161b22;
      color: #c9d1d9;
      margin-top: 6px;
    }

    #category option {
      background-color: #161b22;
      color: #161b22;
    }

    /* textarea styling */
    textarea {
      resize: vertical;
      min-height: 10px;
    }

    .toolbar {
      display: flex;
      gap: 8px;
      margin: 12px 0;
      
    }

    .toolbar button {
      padding: 6px 10px;
      border-radius: 4px;
      border: 1px solid #30363d;
      background-color: #21262d;
      color: #c9d1d9;
      cursor: pointer;
    }

    .toolbar button:hover {
      background-color: #30363d;
    }

    /* Button Styles */
.btn{
    display:flex;
    gap:20px;
}
.cyber-button {
    position: relative;
    display: inline-flex;
    margin-top: 25px;
    flex-wrap: wrap;
    align-items: center;
    padding: 0.5rem 1.25rem;
    overflow: hidden;
    font-family: 'Share Tech Mono', monospace;
    font-weight: 500;
    font-size: 0.875rem;
    border: 2px solid rgba(0, 240, 255, 0.7);
    background-color: var(--cyber-black);
    color: var(--cyber-blue);
    transition: all 0.3s ease;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(0, 240, 255, 0.3);
    text-align: center;
    line-height: 1;
}

.cyber-button:hover {
    color: white;
    box-shadow: 0 0 20px rgba(0, 240, 255, 0.7);
}
    #category option{
        background-color: black;
    }
  </style>

</head>
<body>

  <div class="container">
    <aside class="sidebar">
     <h1 class="logo"><span class="text-cyber-blue">Cyber</span><span class="text-cyber-purple">Play</span></h1>
    </aside>

    <main class="main-content">
      <div class="breadcrumb">
        <a href="index.jsp">Home</a> &gt; <a href="#"> <span>About us</span> </a>
      </div>

      <h1 class="text-cyber-blue">About  <span class="text-cyber-purple">us</span></h1>
      <section class="about-us">
        <div class="container">
            <div class="left">
                <p>Developed by members of the esports comunity, Game Forum takes gamers to the next generation of the esports community anytime, anywhere! We are a secure platform designed to enhance your gaming experience and increase the feeling of competition and engagement you get from your favourite games.



                </p>
                <ul>
                    <li>Passionate about gaming</li>
                    <li>Innovative game development</li>
                    <li>Community-focused approach</li>
                </ul>
                <button type="button" class="cyber-button" cancel">Learn More</button>

            </div>
            <div class="right">
                <div class="placeholder-image">


                </div>
            </div>
        </div>
    </section>


    <section class="our-services">
        <div>
            <h2>Our Services</h2>

            <div class="services-grid">
                <div class="service-item">
                    <div class="placeholder-icon"></div>
                    <h3>Service 1</h3>
                    <p>Short description.</p>
                                <button type="button" class="cyber-button" cancel"> +</button>

                </div>
                <div class="service-item">
                    <div class="placeholder-icon"></div>
                    <h3>Service 2</h3>
                    <p>Short description.</p>
                    <button type="button" class="cyber-button" cancel"> +</button>

                </div>
                <div class="service-item">
                    <div class="placeholder-icon"></div>
                    <h3>Service 3</h3>
                    <p>Short description.</p>
                    <button type="button" class="cyber-button" cancel"> +</button>

                </div>
               
            </div>
        </div>
    </section>



    <section class="meet-our-people">
        <div >
            <h2>Meet our people</h2>
            <div class="people-grid">
                <div class="person-card">
                    <div class="placeholder-avatar"></div>
                    <h3>Aakrish Dahal</h3>
                    <p>Role</p>
                    <button type="button" class="cyber-button" cancel"> Read More</button>

                </div>
                <div class="person-card">
                    <div class="placeholder-avatar"></div>
                    <h3>Krish Bhandari</h3>
                    <p>Role</p>
                    <button type="button" class="cyber-button" cancel"> Read More</button>

                </div>
                <div class="person-card">
                    <div class="placeholder-avatar"></div>
                    <h3>Sayuj Maskey</h3>
                    <p>Role</p>
                                        <button type="button" class="cyber-button" cancel"> Read More</button>

                </div>
                <div class="person-card">
                    <div class="placeholder-avatar"></div>
                    <h3>Nirdesh Bakunche</h3>
                    <p>Role</p>
                                        <button type="button" class="cyber-button" cancel"> Read More</button>

                </div>
                <div class="person-card">
                    <div class="placeholder-avatar"></div>
                    <h3>Prabhat Lamichhane</h3>
                    <p>Role</p>
                                        <button type="button" class="cyber-button" cancel"> Read More</button>

                </div>
            </div>
        </div>
    </section>

    
    <section class="our-achievements">
        <div >
            <h2>Our Achievements</h2>
            <div class="achievements-grid">
                <div class="achievement-item">
                    <div class="placeholder-document"></div>
                    <h3>Achievement 1</h3>
                    <p>Brief description.</p>
                    <button type="button" class="cyber-button" cancel"> + </button>

                </div>
                <div class="achievement-item">
                    <div class="placeholder-document"></div>
                    <h3>Achievement 2</h3>
                    <p>Brief description.</p>
                    <button type="button" class="cyber-button" cancel"> + </button>
                </div>
                <div class="achievement-item">
                    <div class="placeholder-document"></div>
                    <h3>Achievement 3</h3>
                    <p>Brief description.</p>
                    <button type="button" class="cyber-button" cancel"> + </button>
                </div>
                <div class="achievement-item">
                    <div class="placeholder-document"></div>
                    <h3>Achievement 4</h3>
                    <p>Brief description.</p>
                    <button type="button" class="cyber-button" cancel"> + </button>
                </div>
            </div>
        </div>
    </section>

    <section class="get-better-gaming">
        <div >
            <div class="left">
                <h2>Get better Gaming</h2>
                <button type="button" class="cyber-button" cancel"> Join Now </button>
            </div>

            <div class="right">
                <div class="placeholder-image"></div>
            </div>
        </div>
    </section>

    <footer>
        <div>
            <p>&copy; 2023 Gaming Company. All rights reserved.</p>
        </div>
    </footer>
    </main>
  </div>
</body>
</html>
