var exec = require('cordova/exec'),

// Reference name for the plugin
PLUGIN_NAME = 'HandleFile',

// Plugin methods on the native side that can be called from JavaScript
pluginNativeMethod = {
	SUBSCRIBE: 'jsSubscribeForEvent',
	UNSUBSCRIBE: 'jsUnsubscribeFromEvent'
};

var HandleFile = {

	/**
	 * Subscribe to event.
	 * If plugin already captured that event - callback will be called immediately.
	 *

	 * @param {Function} callback - callback that is called when event is captured
	 */
	subscribe: function (callback) {
		if (!callback) {
			console.warn('HandleFile: can\'t subscribe to event without a callback');
			return;
		}

		var innerCallback = function (msg) {
			callback(msg);
		};

		exec(innerCallback, null, PLUGIN_NAME, pluginNativeMethod.SUBSCRIBE, []);
	}

};

module.exports = HandleFile;
