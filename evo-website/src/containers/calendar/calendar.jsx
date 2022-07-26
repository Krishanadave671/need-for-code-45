import React from 'react'
import Sidebar from '../../components/sidebar';
import Calendar from 'react-calendar';
import styled from 'styled-components';

import  './calendar.css';

export default function calendar() {
  return (
    <div>
      <Sidebar pageWrapId={'page-wrap'} outerContainerId={'outer-container'} />
      <div className="calendar-container">
        <Calendar className="calender"
         />
      </div>
    </div>
  )
}

const CalendarContainer = styled.div`
.react-calendar { 
  width: 400px;
  max-width: 100%;
  background-color: #fff;
  color: #222;
  border-radius: 8px;
  box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
  font-family: Arial, Helvetica, sans-serif;
  line-height: 1.125em;
  border: none;
}
.react-calendar__navigation button {
  color: #6f48eb;
  min-width: 44px;
  background: none;
  font-size: 16px;
  margin-top: 8px;
  border: none;
}
.react-calendar__navigation button:enabled:hover,
.react-calendar__navigation button:enabled:focus {
  background-color: #f8f8fa;
}
.react-calendar__navigation button[disabled] {
  background-color: #f0f0f0;
}
abbr[title] {
  text-decoration: none;
 }
 /* .react-calendar__month-view__days__day--weekend {
  color: #d10000;
} */
.react-calendar__tile:enabled:hover,
.react-calendar__tile:enabled:focus {
  background: #f8f8fa;
  color: #6f48eb;
  border-radius: 6px;
  border: none;
}
.react-calendar__tile--now {
  background: #6f48eb33;
  border-radius: 6px;
  font-weight: bold;
  color: #6f48eb;
  border: none;
}
.react-calendar__tile--now:enabled:hover,
.react-calendar__tile--now:enabled:focus {
  background: #6f48eb33;
  border-radius: 6px;
  font-weight: bold;
  color: #6f48eb;
  border: none;
}
.react-calendar__tile--hasActive:enabled:hover,
.react-calendar__tile--hasActive:enabled:focus {
  background: #f8f8fa;
}
 .react-calendar__tile--active {
  background: #6f48eb;
  border-radius: 6px;
  font-weight: bold;
  color: white;
border: none;
}
.react-calendar__tile--active:enabled:hover,
.react-calendar__tile--active:enabled:focus {
  background: #6f48eb;
  color: white;
 }
 .react-calendar--selectRange .react-calendar__tile--hover {
  background-color: #f8f8fa;
}
.react-calendar__tile--range {
  background: #f8f8fa;
  color: #6f48eb;
  border: none;
  border-radius: 0;
 }
 .react-calendar__tile--rangeStart {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
  border-top-left-radius: 6px;
  border-bottom-left-radius: 6px;
  border: none;
  background: #6f48eb;
  color: white;
}
 .react-calendar__tile--rangeEnd {
     border-top-left-radius: 0;
  border-bottom-left-radius: 0;
  border-top-right-radius: 6px;
  border-bottom-right-radius: 6px;
  background: #6f48eb;
  border: none;
  color: white;
}

`;