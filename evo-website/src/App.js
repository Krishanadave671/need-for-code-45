import React from 'react';
import {
	Dashboard,
	Landing,
	Login,
	Register,
	Calendar,
	Editor
} from './containers';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './App.css';
import './containers/calendar/calendar.css';

const App = () => {
	return (
		<div className="App">
			<BrowserRouter>
				<Routes>
					<Route exact path="/" element={<Landing />} />
					<Route path="/register" element={<Register />} />
					<Route path="/dashboard" element={<Dashboard />} />
					<Route path="/login" element={<Login />} />
					{/* dashboard  */}
                {/* pages  */}
                <Route path="/editor" element={<Editor />} />
                <Route path="/calendar" element={<Calendar />} />
				</Routes>
			</BrowserRouter>
		</div>
	);
};

export default App;
