import React from 'react';
import logo from '../../assets/evo_logo.png'
import './landing.css';
const NavLinks = () => (
	<React.Fragment>
		<p><a href="/">About Us</a></p>
		<p><a href="/dashboard">Get Started</a></p>
	</React.Fragment>
);

const Landing = () => {
	return (
		<div>
			<div className="landing-navbar">
				<div className="landing-navbar-logo">
					<img src={logo} alt="evo-logo" />
				</div>
				<div className="landing-navbar-links">
					<NavLinks />
				</div>
			</div>

		</div>
	);
};

export default Landing;
