import React from 'react'
import Sidebar from '../../components/sidebar';

const Dashboard = () => {
  return (
    <div>
      <Sidebar pageWrapId={'page-wrap'} outerContainerId={'outer-container'} />
      <div id="page-wrap">
      </div>
    </div>
    
  )
}

export default Dashboard;

