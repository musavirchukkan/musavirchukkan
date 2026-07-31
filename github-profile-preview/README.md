<!--
  PREVIEW — GitHub Profile README rewrite for musavirchukkan
  Review here first. After confirmation, copy into musavirchukkan/musavirchukkan.
-->

<div align="center">
  <a href="https://musavirchukkan.in">
    <img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=600&size=28&duration=3000&pause=800&color=38BDF8&center=true&vCenter=true&width=780&lines=%24+whoami;Abdul+Musavir+Chukkan;Senior+Software+Engineer+%7C+Systems+%26+Full+Stack" alt="whoami typing" />
  </a>
</div>

<p align="center">
  <a href="https://musavirchukkan.in"><img src="https://img.shields.io/badge/portfolio-musavirchukkan.in-0ea5e9?style=for-the-badge&logo=vercel&logoColor=white" alt="Portfolio" /></a>
  <a href="mailto:abdulmusavirc@gmail.com"><img src="https://img.shields.io/badge/email-abdulmusavirc@gmail.com-ea4335?style=for-the-badge&logo=gmail&logoColor=white" alt="Email" /></a>
  <a href="https://www.linkedin.com/in/musavirchukkan/"><img src="https://img.shields.io/badge/linkedin-connect-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn" /></a>
  <a href="https://twitter.com/musavir_chukkan"><img src="https://img.shields.io/badge/x-@musavir__chukkan-000000?style=for-the-badge&logo=x&logoColor=white" alt="X" /></a>
  <img src="https://komarev.com/ghpvc/?username=musavirchukkan&style=for-the-badge&color=0ea5e9&label=profile+views" alt="Profile views" />
</p>

---

## `~/system` — engineer profile

```bash
$ cat ~/.profile
name:        Abdul Musavir Chukkan
role:        Senior Software Engineer
focus:       [microservices, realtime, performance, integrations]
stack:       [TypeScript, Node.js, NestJS, React, PostgreSQL, Redis, Kafka]
experience:  4+ years shipping production systems
impact:      application performance ↑ ~80% on key workloads
status:      open_to_opportunities=true
```

I design and ship **event-driven backends**, **real-time clients**, and **integration-heavy platforms** — from bid engines and identity graphs to notification pipelines and API gateways.

<details>
<summary><strong>▸ Expand: current engineering focus</strong></summary>

<br/>

| Domain | What I'm building / optimizing |
| --- | --- |
| **Realtime systems** | WebSocket fan-out, auction/bidding loops, presence & low-latency updates |
| **Microservices** | NestJS / Node services with clear bounded contexts and async boundaries |
| **Data paths** | Postgres + Mongo + Redis caching; Redis/RabbitMQ/Kafka for work queues |
| **Integrations** | WhatsApp Cloud API, Facebook Lead API, Twilio, Google Calendar webhooks |
| **Ops** | Dockerized deploys, CI with GitHub Actions, Cloudflare edge patterns |

</details>

---

## Architecture I typically ship

```mermaid
flowchart LR
  Client["Web / Admin Clients<br/>React · Next.js"] -->|HTTPS / WS| Gateway["API Gateway<br/>NestJS · Express"]
  Gateway --> Auth["Auth & ACL"]
  Gateway --> Core["Domain Services"]
  Core --> Queue["Async Bus<br/>RabbitMQ · Kafka"]
  Core --> Cache["Redis"]
  Core --> DB[("Postgres / Mongo")]
  Queue --> Workers["Workers<br/>email · alerts · reconcile"]
  Workers --> Ext["External APIs<br/>Twilio · WhatsApp · Calendar"]
```

<details>
<summary><strong>▸ Expand: design defaults</strong></summary>

- **Sync for reads / command path**, async for side-effects (email, webhooks, reconciliation)
- **Idempotent consumers** on queues; retry with backoff; dead-letter when needed
- **Cache-aside** on hot reads; invalidate on write paths that matter
- **Contract-first APIs** + typed clients (TypeScript end-to-end when possible)
- **Observability first**: structured logs, request IDs, actionable failure modes

</details>

---

## Featured systems

Click a repo to dive in. Each card highlights the **technical problem**, not just the feature list.

<table>
  <tr>
    <td width="50%" valign="top">
      <h3><a href="https://github.com/musavirchukkan/AuctionForge">AuctionForge</a></h3>
      <p><code>TypeScript</code> · realtime bidding · concurrency</p>
      <p>High-frequency multi-user auction engine: concurrent bid intake, integrity under load, and enterprise-grade reliability/security constraints.</p>
      <p>
        <img src="https://img.shields.io/badge/realtime-WebSockets-38BDF8?style=flat-square" alt="realtime" />
        <img src="https://img.shields.io/badge/focus-consistency-22C55E?style=flat-square" alt="consistency" />
      </p>
    </td>
    <td width="50%" valign="top">
      <h3><a href="https://github.com/musavirchukkan/identity-reconciliation">identity-reconciliation</a></h3>
      <p><code>TypeScript</code> · graph linking · CRM identity</p>
      <p>Contact identity graph that merges customer records across purchases into a single canonical profile — classic entity-resolution at request time.</p>
      <p>
        <img src="https://img.shields.io/badge/pattern-entity%20resolution-A78BFA?style=flat-square" alt="entity resolution" />
        <img src="https://img.shields.io/badge/data-merge%20logic-F59E0B?style=flat-square" alt="merge" />
      </p>
    </td>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <h3><a href="https://github.com/musavirchukkan/email-microservice">email-microservice</a></h3>
      <p><code>TypeScript</code> · service boundary · async delivery</p>
      <p>Standalone mail service — isolates delivery, templates, and provider concerns from product APIs so domain services stay thin.</p>
      <p>
        <img src="https://img.shields.io/badge/style-microservice-64748B?style=flat-square" alt="microservice" />
        <img src="https://img.shields.io/badge/io-provider%20adapters-0EA5E9?style=flat-square" alt="adapters" />
      </p>
    </td>
    <td width="50%" valign="top">
      <h3><a href="https://github.com/musavirchukkan/task-management-system">task-management-system</a></h3>
      <p><code>Laravel 12</code> · auth · workflow API</p>
      <p>Task assignment platform with authentication, ownership, and status transitions exposed as a clean REST API surface.</p>
      <p>
        <img src="https://img.shields.io/badge/api-REST-EF4444?style=flat-square" alt="REST" />
        <img src="https://img.shields.io/badge/domain-workflows-14B8A6?style=flat-square" alt="workflows" />
      </p>
    </td>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <h3><a href="https://github.com/musavirchukkan/podcast-subscription-app">podcast-subscription-app</a></h3>
      <p><code>TypeScript</code> · subscriptions · product flow</p>
      <p>End-to-end subscription product for podcasts. <a href="https://www.youtube.com/shorts/YMIQm2TTo5Y">Watch demo</a>.</p>
    </td>
    <td width="50%" valign="top">
      <h3><a href="https://github.com/musavirchukkan/Habit0">Habit0</a></h3>
      <p><code>TypeScript</code> · streaks · gamification</p>
      <p>Habit tracker with streak rewards — state machines for daily completion and reward loops.</p>
    </td>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <h3><a href="https://github.com/musavirchukkan/google-calendar-call-alert">google-calendar-call-alert</a></h3>
      <p><code>JavaScript</code> · webhooks · alerting</p>
      <p>Calendar-driven call alerts: event hooks → notification path for upcoming meetings.</p>
    </td>
    <td width="50%" valign="top">
      <h3><a href="https://github.com/musavirchukkan/mern-todo">mern-todo</a></h3>
      <p><code>MERN</code> · full stack · shipped</p>
      <p>Classic MERN todo with auth + CRUD. <a href="https://todo.musavirchukkan.in/">Live demo</a>.</p>
    </td>
  </tr>
</table>

---

## Interactive toolbox

<details open>
<summary><strong>▸ Tech stack map</strong> (click layers)</summary>

<br/>

**Languages**  
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=000)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
[![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=fff)](https://www.typescriptlang.org/)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=fff)](https://www.python.org/)
[![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=fff)](https://www.php.net/)
[![C](https://img.shields.io/badge/C-A8B9CC?style=for-the-badge&logo=c&logoColor=000)](https://en.cppreference.com/w/c)

**Runtime & frameworks**  
[![Node.js](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=fff)](https://nodejs.org/)
[![NestJS](https://img.shields.io/badge/NestJS-E0234E?style=for-the-badge&logo=nestjs&logoColor=fff)](https://nestjs.com/)
[![Express](https://img.shields.io/badge/Express-000000?style=for-the-badge&logo=express&logoColor=fff)](https://expressjs.com/)
[![Laravel](https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=fff)](https://laravel.com/)
[![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)](https://react.dev/)
[![Next.js](https://img.shields.io/badge/Next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=fff)](https://nextjs.org/)

**Data, cache, messaging**  
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=fff)](https://www.postgresql.org/)
[![MongoDB](https://img.shields.io/badge/MongoDB-47A248?style=for-the-badge&logo=mongodb&logoColor=fff)](https://www.mongodb.com/)
[![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=fff)](https://www.mysql.com/)
[![Redis](https://img.shields.io/badge/Redis-DC382D?style=for-the-badge&logo=redis&logoColor=fff)](https://redis.io/)
[![RabbitMQ](https://img.shields.io/badge/RabbitMQ-FF6600?style=for-the-badge&logo=rabbitmq&logoColor=fff)](https://www.rabbitmq.com/)
[![Kafka](https://img.shields.io/badge/Kafka-231F20?style=for-the-badge&logo=apachekafka&logoColor=fff)](https://kafka.apache.org/)

**Cloud & delivery**  
[![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=FF9900)](https://aws.amazon.com/)
[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=fff)](https://www.docker.com/)
[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=fff)](https://github.com/features/actions)
[![Cloudflare](https://img.shields.io/badge/Cloudflare-F38020?style=for-the-badge&logo=cloudflare&logoColor=fff)](https://www.cloudflare.com/)
[![Tailwind](https://img.shields.io/badge/Tailwind-06B6D4?style=for-the-badge&logo=tailwindcss&logoColor=fff)](https://tailwindcss.com/)

</details>

<details>
<summary><strong>▸ Reliability checklist I run before ship</strong></summary>

```text
[ ] request timeouts + circuit breakers on external I/O
[ ] idempotency keys on payment / create / webhook handlers
[ ] queue retries + DLQ + alert on poison messages
[ ] authz checks on every mutating route (not just authn)
[ ] migration rollback plan + backward-compatible schema changes
[ ] load test hot path (p95 / error budget) before go-live
```

</details>

<details>
<summary><strong>▸ Competitive programming</strong></summary>

<br/>

<p>
  <a href="https://leetcode.com/musavirchukkan/"><img src="https://img.shields.io/badge/LeetCode-musavirchukkan-FFA116?style=for-the-badge&logo=leetcode&logoColor=black" alt="LeetCode" /></a>
  <a href="https://www.hackerrank.com/musavirchukkan"><img src="https://img.shields.io/badge/HackerRank-musavirchukkan-00EA64?style=for-the-badge&logo=hackerrank&logoColor=black" alt="HackerRank" /></a>
  <a href="https://www.codechef.com/users/musavirchukkan"><img src="https://img.shields.io/badge/CodeChef-musavirchukkan-5B4638?style=for-the-badge&logo=codechef&logoColor=white" alt="CodeChef" /></a>
</p>

</details>

---

## Live metrics

<div align="center">
  <a href="https://github.com/ryo-ma/github-profile-trophy">
    <img src="https://github-profile-trophy.vercel.app/?username=musavirchukkan&theme=onedark&no-frame=true&column=7&margin-w=8&margin-h=8" alt="GitHub trophies" />
  </a>
</div>

<div align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github-readme-stats.vercel.app/api?username=musavirchukkan&show_icons=true&theme=dark&hide_border=true&count_private=true&include_all_commits=true" />
    <img height="168" src="https://github-readme-stats.vercel.app/api?username=musavirchukkan&show_icons=true&theme=default&hide_border=true&count_private=true&include_all_commits=true" alt="GitHub stats" />
  </picture>
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://streak-stats.demolab.com?user=musavirchukkan&theme=dark&hide_border=true" />
    <img height="168" src="https://streak-stats.demolab.com?user=musavirchukkan&theme=default&hide_border=true" alt="GitHub streak" />
  </picture>
</div>

<div align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github-readme-stats.vercel.app/api/top-langs/?username=musavirchukkan&layout=compact&theme=dark&hide_border=true&langs_count=8" />
    <img height="168" src="https://github-readme-stats.vercel.app/api/top-langs/?username=musavirchukkan&layout=compact&theme=default&hide_border=true&langs_count=8" alt="Top languages" />
  </picture>
  <img height="168" src="https://github-readme-activity-graph.vercel.app/graph?username=musavirchukkan&theme=react-dark&hide_border=true&area=true" alt="Contribution activity graph" />
</div>

---

## Contribution snake

<!-- SNAKE:START -->
<div align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="./assets/github-contribution-grid-snake-dark.svg" />
    <img alt="GitHub contribution snake animation" src="./assets/github-contribution-grid-snake.svg" />
  </picture>
</div>
<!-- SNAKE:END -->

<details>
<summary><strong>▸ How this animation stays fresh</strong></summary>

<br/>

Generated from my real contribution grid via [Platane/snk](https://github.com/Platane/snk).  
The included Action regenerates `./assets/*.svg` daily so the snake keeps eating new green squares.

</details>

---

## Achievements

| | |
| --- | --- |
| 🏅 | **Best Performer** — Axel Technologies (2 consecutive periods) |
| 🧭 | **Vice Chairperson** — IEEE CS SBC MESCE (2020–2021) |
| 🏆 | **Regional Hackathon Winner** (2021) |
| 📈 | Grew IEEE chapter membership by **40%** |
| 👨‍🏫 | Trained **65+ students** in competitive programming |

---

## Connect / collaborate

```bash
$ ssh musavir@internet
> prefer: backend systems · realtime · fullstack product builds
> ping:   abdulmusavirc@gmail.com
> site:   https://musavirchukkan.in
> gh:     https://github.com/musavirchukkan
```

<p align="center">
  <a href="https://github.com/musavirchukkan"><img src="https://img.shields.io/badge/GitHub-Follow-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub" /></a>
  <a href="https://www.linkedin.com/in/musavirchukkan/"><img src="https://img.shields.io/badge/LinkedIn-Message-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn" /></a>
  <a href="https://musavirchukkan.in"><img src="https://img.shields.io/badge/Portfolio-Open-0ea5e9?style=for-the-badge&logo=vercel&logoColor=white" alt="Portfolio" /></a>
  <a href="mailto:abdulmusavirc@gmail.com"><img src="https://img.shields.io/badge/Email-Say%20hello-EA4335?style=for-the-badge&logo=gmail&logoColor=white" alt="Email" /></a>
</p>

<p align="center"><em>Build systems that stay correct under pressure.</em></p>
