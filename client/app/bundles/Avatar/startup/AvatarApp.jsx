import React from 'react';
import ReactOnRails from 'react-on-rails';

import Avatar from '../containers/Avatar';

const AvatarApp = (props) => (
  <Avatar {...props} />
);

// This is how react_on_rails can see the AvatarApp in the browser.
ReactOnRails.register({ AvatarApp });
