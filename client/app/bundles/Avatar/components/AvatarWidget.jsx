// AvatarWidget is an arbitrary name for any "dumb" component. We do not recommend suffixing
// all your dump component names with Widget.

import React, { PropTypes } from 'react';

// Simple example of a React "dumb" component
export default class AvatarWidget extends React.Component {
  static propTypes = {
    // If you have lots of data or action properties, you should consider grouping them by
    // passing two properties: "data" and "actions".
    updateUrl: PropTypes.func.isRequired,
    url: PropTypes.string.isRequired,
  };

  // React will automatically provide us with the event `e`
  handleChange(e) {
    const url = e.src;
    this.props.updateUrl(url);
  }

  render() {
    const { url } = this.props;
    return (
      <span className="user-avatar">
        <img src={url} />
      </span>
    );
  }
}
