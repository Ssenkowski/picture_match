import React from 'react';

function login(e) {
	e.preventDefault();
	console.log('The link was clicked')
}

export const Bible = () =>  (
      <div>
          <img src={ require('./Bible.jpg')}
            className="welcome-image"
            id="new-world-translation" 
             />
      </div>
    );
    
    export default Bible;