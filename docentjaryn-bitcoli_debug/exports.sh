export APP_BITCOLI_UI_PORT_DEBUG="27618"
export APP_BITCOLI_API_PORT_DEBUG="27619"
export APP_BITCOLI_API_IP_DEBUG="10.21.21.89"

bitcoli_api_hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}-api/hostname"
if [ -s "${bitcoli_api_hidden_service_file}" ]; then
    export APP_BITCOLI_API_HIDDEN_SERVICE_DEBUG="http://$(cat "${bitcoli_api_hidden_service_file}")"
else
    export APP_BITCOLI_API_HIDDEN_SERVICE_DEBUG=""
fi
