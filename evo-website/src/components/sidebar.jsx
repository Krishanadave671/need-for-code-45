import React from 'react';
import { slide as Menu } from 'react-burger-menu';
import './Sidebar.css';
export default props => {
  return (
    <Menu>
      <a className="menu-item" href="/dashboard">
        Profile
      </a>
      <a className="menu-item" href="/dashboard">
        Your Events
      </a>
      <a className="menu-item" href="/calendar">
        Calendars
      </a>
    </Menu>
  );
};