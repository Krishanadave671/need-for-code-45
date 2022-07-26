import React from 'react';
import {
	Create,
	Dashboard,
	Landing,
	Login,
	Register,
	Status,
	Exam
} from './containers';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './App.css';

const App = () => {
	return (
		<div className="App">
			<BrowserRouter>
				<Routes>
					<Route exact path="/" element={<Landing />} />
					<Route path="/register" element={<Register />} />
				</Routes>
			</BrowserRouter>
		</div>
	);
};

export default App;
