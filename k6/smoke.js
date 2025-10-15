// k6 smoke test
import http from 'k6/http';
import { sleep } from 'k6';

export let options = { vus: 1, duration: '30s' };

export default function () {
  http.get('http://localhost:8080/actuator/health');
  sleep(1);
}
