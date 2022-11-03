import { Link } from "react-router-dom";

function Header() {
  return (
    <header>
      <h1>
        <Link to="/">Super Heroes</Link>
      </h1>

      <nav class="navbar navbar-expand-lg bg-light">
      <div class="container-fluid">
        <Link class="navbar-brand" to="/">Heroes</Link>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
                    
            <li class="nav-item">
              <Link class="nav-link" to="/hero_powers/new">Add New</Link>
            </li>
           
          </ul>
        </div>
      </div>
    </nav>      
    </header>
  


    
  );
}

export default Header;
