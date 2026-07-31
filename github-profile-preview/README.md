<!--
  PREVIEW — GitHub Profile README rewrite for musavirchukkan
  Sourced from https://musavirchukkan.in + public GitHub data.
  Review here first. After confirmation, copy into musavirchukkan/musavirchukkan.
-->

<div align="center">
  <a href="https://musavirchukkan.in">
    <img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=600&size=28&duration=3000&pause=800&color=38BDF8&center=true&vCenter=true&width=820&lines=%24+whoami;Abdul+Musavir+Chukkan;Senior+Software+Engineer+%7C+Full+Stack;Building+systems+that+scale+under+load" alt="whoami typing" />
  </a>
</div>

<p align="center">
  <a href="https://musavirchukkan.in"><img src="https://img.shields.io/badge/portfolio-musavirchukkan.in-0ea5e9?style=for-the-badge&logo=vercel&logoColor=white" alt="Portfolio" /></a>
  <a href="mailto:abdulmusavirc@gmail.com"><img src="https://img.shields.io/badge/email-abdulmusavirc@gmail.com-ea4335?style=for-the-badge&logo=gmail&logoColor=white" alt="Email" /></a>
  <a href="https://www.linkedin.com/in/musavirchukkan/"><img src="https://img.shields.io/badge/linkedin-connect-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn" /></a>
  <a href="https://twitter.com/musavir_chukkan"><img src="https://img.shields.io/badge/x-@musavir__chukkan-000000?style=for-the-badge&logo=x&logoColor=white" alt="X" /></a>
  <img src="https://komarev.com/ghpvc/?username=musavirchukkan&style=for-the-badge&color=0ea5e9&label=profile+views" alt="Profile views" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/role-Software%20Engineer%20%40%20Singularis%20Ventures%20·%20Aula-22C55E?style=flat-square" alt="Current role" />
  <img src="https://img.shields.io/badge/experience-4%2B%20years-38BDF8?style=flat-square" alt="Experience" />
  <img src="https://img.shields.io/badge/perf%20win-~80%25%20faster%20Workpex-F59E0B?style=flat-square" alt="Performance" />
  <img src="https://img.shields.io/badge/GitHub-Developer%20Program%20Member-181717?style=flat-square&logo=github" alt="GitHub Developer Program" />
</p>

---

## `~/system` — engineer profile

```bash
$ cat ~/.profile
name:        Abdul Musavir Chukkan
role:        Senior Software Engineer · Full Stack
employer:    Singularis Ventures · Aula   # Jun 2025 → present
prior:       Axel Technologies / Workpex # Aug 2023 → Jun 2025
focus:       [microservices, realtime, CQRS, PaaS, integrations]
stack:       [Go, TypeScript, NestJS, Node.js, React, Next.js,
              PostgreSQL, Redis, Kafka, RabbitMQ, Docker, AWS]
impact:      Workpex load time 30s → 6s (~80%); enterprise WhatsApp + FB Lead APIs
status:      open_to_opportunities=true
site:        https://musavirchukkan.in
```

I design backends that stay correct under pressure — **CQRS hot paths**, **realtime gateways**, **multi-tenant SaaS**, and **self-hosted control planes** — then wire them to product UIs that operators can actually use.

<details>
<summary><strong>▸ Expand: current engineering focus</strong></summary>

<br/>

| Domain | What I'm shipping |
| --- | --- |
| **Hot-path systems** | URL redirect engines, bid loops, WebSocket fan-out — isolate spike traffic from management APIs |
| **Control planes** | Agent/Hub PaaS patterns (outbound WSS, least-privilege Docker) |
| **Product backends** | NestJS / Express / Fastify services with Prisma/Drizzle, Redis, queues |
| **AI pipelines** | Whisper → LLaMA quiz generation; browser-side Gemini/OpenAI analysis |
| **Integrations** | WhatsApp Cloud API, Facebook Lead API, Twilio, Razorpay, SES |
| **Ops** | Docker Compose, dual-VPS GitHub Actions deploys, Cloudflare edge |

</details>

---

## Experience

| When | Role | Org | Highlights |
| --- | --- | --- | --- |
| **Jun 2025 – Present** | Software Engineer | [Singularis Ventures · Aula](https://musavirchukkan.in) | Node.js / Express / NestJS backends, Docker + AWS, REST + SES |
| **Aug 2023 – Jun 2025** | Associate Software Engineer | Axel Technologies — Workpex | FB Lead + WhatsApp Cloud APIs, WebSockets, scheduled reports; **30s → 6s** page load |
| **Aug 2022 – Aug 2023** | Jr. AI Developer | TENZOTECH | Python + web stack; SDLC across design/build/test |
| **Feb 2021 – Apr 2022** | Webmaster | IEEE SB MESCE | 5 sites, payments/hosting/SSL; IEEE appreciation award |
| **Feb 2020 – Jan 2021** | Vice Chair, CS | IEEE SB MESCE | Chapter growth + technical programming |

---

## Architecture I typically ship

```mermaid
flowchart LR
  Clients["Web / Admin / Agents<br/>React · Next.js · Go Agent"] -->|HTTPS / WSS| Hub["API / Hub<br/>NestJS · Fastify · Express"]
  Hub --> Auth["Auth · ACL · JWT"]
  Hub --> Core["Domain Services<br/>CQRS / workflows"]
  Core --> Bus["Async Bus<br/>Kafka · RabbitMQ · BullMQ"]
  Core --> Cache["Redis"]
  Core --> DB[("Postgres · Mongo")]
  Bus --> Workers["Workers<br/>analytics · media · AI · email"]
  Workers --> Ext["External APIs<br/>WhatsApp · Razorpay · SES · Whisper"]
```

<details>
<summary><strong>▸ Expand: design defaults</strong></summary>

- **Split hot paths** from management planes (ClickIt-style CQRS) so viral traffic can't sink billing/auth
- **Agents dial out** — no Docker socket on the control plane (Wharf trust model)
- **Idempotent consumers** + DLQs; Redis idempotency on payment webhooks
- **Multi-tenant isolation** as a first-class invariant (DocAssist clinic boundaries)
- **Contract-first APIs** (OpenAPI) + typed TS clients when possible
- **Observability**: structured logs, request IDs, Sentry by service

</details>

---

## Featured systems

Curated from [musavirchukkan.in/projects](https://musavirchukkan.in/projects). Portfolio write-ups for private work; GitHub where public.

<table>
  <tr>
    <td width="50%" valign="top">
      <h3><a href="https://musavirchukkan.in/projects/clickit">ClickIt</a></h3>
      <p><code>Go</code> · CQRS · Kafka · Redis · Mongo · Next.js</p>
      <p>Distributed URL shortener for high-concurrency redirects. CQRS planes isolate the redirect hot path; Kafka buffers click analytics; Redis/Mongo serve read models. OpenAPI + Docker Compose ops story.</p>
      <p>
        <img src="https://img.shields.io/badge/pattern-CQRS-38BDF8?style=flat-square" alt="CQRS" />
        <img src="https://img.shields.io/badge/focus-hot%20path%20isolation-22C55E?style=flat-square" alt="hot path" />
      </p>
    </td>
    <td width="50%" valign="top">
      <h3><a href="https://musavirchukkan.in/projects/wharf">Wharf</a></h3>
      <p><code>Go</code> · NestJS · React · WSS · Docker · SQLite</p>
      <p>Self-hosted PaaS control plane. Go Agents own Docker on each VPS; NestJS Hub holds desired state over outbound WebSockets; React UI operates projects without mounting the Docker socket on the hub.</p>
      <p>
        <img src="https://img.shields.io/badge/pattern-Agent%2FHub-A78BFA?style=flat-square" alt="Agent/Hub" />
        <img src="https://img.shields.io/badge/security-least%20privilege-F59E0B?style=flat-square" alt="security" />
      </p>
    </td>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <h3><a href="https://github.com/musavirchukkan/AuctionForge">AuctionForge</a> · <a href="https://musavirchukkan.in/projects/auctionforge">write-up</a></h3>
      <p><code>NestJS</code> · React · Socket.IO · Postgres · Redis · RabbitMQ</p>
      <p>Realtime car auction bidding under concurrent load — JWT-secured WebSockets, Prisma/Postgres, Redis live state, RabbitMQ async bid/notification pipeline.</p>
      <p>
        <img src="https://img.shields.io/badge/realtime-Socket.IO-0EA5E9?style=flat-square" alt="realtime" />
        <img src="https://img.shields.io/badge/public-GitHub-181717?style=flat-square" alt="public" />
      </p>
    </td>
    <td width="50%" valign="top">
      <h3><a href="https://musavirchukkan.in/projects/printforge">PrintForge (BRUT)</a> · <a href="https://wearbrut.in">live</a></h3>
      <p><code>Fastify</code> · Next.js · BullMQ · Neon · Razorpay · R2</p>
      <p>Productized print-on-demand for BRUT — API + storefront + Sharp/BullMQ worker. Money in paise, Redis webhook idempotency, Cloudflare R2 uploads, Shiprocket shipping.</p>
      <p>
        <img src="https://img.shields.io/badge/status-private-64748B?style=flat-square" alt="private" />
        <img src="https://img.shields.io/badge/commerce-Razorpay-22C55E?style=flat-square" alt="commerce" />
      </p>
    </td>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <h3><a href="https://musavirchukkan.in/projects/docassist">DocAssist</a></h3>
      <p><code>Express</code> · Prisma · Postgres · React · Redis</p>
      <p>Multi-tenant clinic SaaS with strict patient isolation, multi-device JWT sessions, cross-clinic conflict detection, dual-VPS GitHub Actions deploys.</p>
      <p>
        <img src="https://img.shields.io/badge/pattern-multi--tenant-14B8A6?style=flat-square" alt="multi-tenant" />
        <img src="https://img.shields.io/badge/ci-dual%20VPS-2088FF?style=flat-square" alt="ci" />
      </p>
    </td>
    <td width="50%" valign="top">
      <h3><a href="https://musavirchukkan.in/projects/video-quiz-generator">Video Quiz Generator</a></h3>
      <p><code>NestJS</code> · FastAPI · Whisper · LLaMA · Bull · React</p>
      <p>AI pipeline: lecture upload → Bull/Redis jobs → Whisper transcription → Ollama LLaMA MCQs → streamed progress to user/admin portals.</p>
      <p>
        <img src="https://img.shields.io/badge/status-private-64748B?style=flat-square" alt="private" />
        <img src="https://img.shields.io/badge/ai-Whisper%20%2B%20LLaMA-A78BFA?style=flat-square" alt="ai" />
      </p>
    </td>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <h3><a href="https://musavirchukkan.in/projects/careerstack-ai">CareerStack AI</a></h3>
      <p><code>Chrome Ext</code> · Gemini · OpenAI · Notion · Vite</p>
      <p>Job-application tracker extension: scrape LinkedIn/Indeed → AI resume match score → save structured Notion entries. Keys & data stay in-browser.</p>
      <p>
        <img src="https://img.shields.io/badge/status-private-64748B?style=flat-square" alt="private" />
        <img src="https://img.shields.io/badge/privacy-local%20keys-22C55E?style=flat-square" alt="privacy" />
      </p>
    </td>
    <td width="50%" valign="top">
      <h3><a href="https://musavirchukkan.in/projects/expenseflow">ExpenseFlow (Azorfi)</a></h3>
      <p><code>Express</code> · Next.js · Expo · Prisma · S3</p>
      <p>Relationship-aware expense tracker across API, web, and React Native — JWT, Zod validation, S3 receipts, shared spending charts.</p>
      <p>
        <img src="https://img.shields.io/badge/status-private-64748B?style=flat-square" alt="private" />
        <img src="https://img.shields.io/badge/clients-web%20%2B%20mobile-0EA5E9?style=flat-square" alt="clients" />
      </p>
    </td>
  </tr>
</table>

<details>
<summary><strong>▸ More public GitHub projects</strong></summary>

<br/>

| Repo | Notes |
| --- | --- |
| [identity-reconciliation](https://github.com/musavirchukkan/identity-reconciliation) · [write-up](https://musavirchukkan.in/projects/identity-reconciliation) | Contact identity graph / entity resolution |
| [email-microservice](https://github.com/musavirchukkan/email-microservice) · [write-up](https://musavirchukkan.in/projects/email-microservice) | Isolated mail delivery boundary |
| [customer-traffic-dashboard](https://github.com/musavirchukkan/customer-traffic-dashboard) · [write-up](https://musavirchukkan.in/projects/customer-traffic-dashboard) | Traffic analytics UI |
| [Habit0](https://github.com/musavirchukkan/Habit0) | Habit tracker with streak rewards |
| [mern-todo](https://github.com/musavirchukkan/mern-todo) | MERN todo · [live](https://todo.musavirchukkan.in/) |

Full index → [musavirchukkan.in/projects](https://musavirchukkan.in/projects)

</details>

---

## Interactive toolbox

<details open>
<summary><strong>▸ Tech arsenal</strong> (from portfolio)</summary>

<br/>

**Languages**  
[![Go](https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=fff)](https://go.dev/)
[![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=fff)](https://www.typescriptlang.org/)
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=000)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=fff)](https://www.python.org/)
[![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=fff)](https://www.php.net/)
[![C++](https://img.shields.io/badge/C%2B%2B-00599C?style=for-the-badge&logo=cplusplus&logoColor=fff)](https://isocpp.org/)
[![C](https://img.shields.io/badge/C-A8B9CC?style=for-the-badge&logo=c&logoColor=000)](https://en.cppreference.com/w/c)

**Backend & frontend**  
[![Node.js](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=fff)](https://nodejs.org/)
[![NestJS](https://img.shields.io/badge/NestJS-E0234E?style=for-the-badge&logo=nestjs&logoColor=fff)](https://nestjs.com/)
[![Express](https://img.shields.io/badge/Express-000000?style=for-the-badge&logo=express&logoColor=fff)](https://expressjs.com/)
[![Fastify](https://img.shields.io/badge/Fastify-000000?style=for-the-badge&logo=fastify&logoColor=fff)](https://fastify.dev/)
[![Laravel](https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=fff)](https://laravel.com/)
[![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)](https://react.dev/)
[![Next.js](https://img.shields.io/badge/Next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=fff)](https://nextjs.org/)
[![Expo](https://img.shields.io/badge/Expo-000020?style=for-the-badge&logo=expo&logoColor=fff)](https://expo.dev/)

**Data, cache, messaging**  
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=fff)](https://www.postgresql.org/)
[![MongoDB](https://img.shields.io/badge/MongoDB-47A248?style=for-the-badge&logo=mongodb&logoColor=fff)](https://www.mongodb.com/)
[![Redis](https://img.shields.io/badge/Redis-DC382D?style=for-the-badge&logo=redis&logoColor=fff)](https://redis.io/)
[![Kafka](https://img.shields.io/badge/Kafka-231F20?style=for-the-badge&logo=apachekafka&logoColor=fff)](https://kafka.apache.org/)
[![RabbitMQ](https://img.shields.io/badge/RabbitMQ-FF6600?style=for-the-badge&logo=rabbitmq&logoColor=fff)](https://www.rabbitmq.com/)
[![Socket.IO](https://img.shields.io/badge/Socket.IO-010101?style=for-the-badge&logo=socketdotio&logoColor=fff)](https://socket.io/)

**Cloud, AI & delivery**  
[![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=FF9900)](https://aws.amazon.com/)
[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=fff)](https://www.docker.com/)
[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=fff)](https://github.com/features/actions)
[![Cloudflare](https://img.shields.io/badge/Cloudflare-F38020?style=for-the-badge&logo=cloudflare&logoColor=fff)](https://www.cloudflare.com/)
[![TensorFlow](https://img.shields.io/badge/TensorFlow-FF6F00?style=for-the-badge&logo=tensorflow&logoColor=fff)](https://www.tensorflow.org/)
[![OpenAI](https://img.shields.io/badge/OpenAI-412991?style=for-the-badge&logo=openai&logoColor=fff)](https://openai.com/)

</details>

<details>
<summary><strong>▸ Reliability checklist I run before ship</strong></summary>

```text
[ ] hot path isolated from management / billing planes
[ ] request timeouts + circuit breakers on external I/O
[ ] idempotency keys on payment / create / webhook handlers
[ ] queue retries + DLQ + alert on poison messages
[ ] authz on every mutating route (not just authn)
[ ] tenant / clinic isolation verified with negative tests
[ ] migration rollback + backward-compatible schema changes
[ ] load test hot path (p95 / error budget) before go-live
```

</details>

<details>
<summary><strong>▸ Certifications snapshot</strong></summary>

<br/>

- **Google Cloud** — 13 skill badges (networking, K8s, BigQuery ML, DevOps, security) · Feb 2025 · [list](https://musavirchukkan.in/certifications)
- **HackerRank** — SQL (Basic), Software Engineer Intern
- **Duke University** — Programming Fundamentals
- **University of Michigan** — Programming for Everybody (Python)

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
  <!-- Official github-profile-trophy.vercel.app returns 402 DEPLOYMENT_DISABLED; use a community load-balancing mirror -->
  <a href="https://github.com/ryo-ma/github-profile-trophy">
    <img src="https://github-profile-trophy-orcin-eta.vercel.app/?username=musavirchukkan&theme=onedark&no-frame=true&column=6&margin-w=8&margin-h=8" alt="GitHub trophies" />
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

Generated from my contribution grid via [Platane/snk](https://github.com/Platane/snk).  
The included Action regenerates `./assets/*.svg` daily.

</details>

---

## Achievements

| | |
| --- | --- |
| 🏅 | **Best Performer** — Axel Technologies (2 consecutive periods) |
| ⚡ | **~80% faster Workpex** — 30s → 6s load time |
| 🧊 | **Arctic Code Vault Contributor** + **GitHub Developer Program Member** |
| 🧭 | **Vice Chairperson** — IEEE CS SBC MESCE (2020–2021) |
| 🏆 | **Regional Hackathon Winner** (2021) |
| 📈 | Grew IEEE chapter membership by **40%** |
| 👨‍🏫 | Trained **65+ students** in competitive programming |

---

## Connect / collaborate

```bash
$ ssh musavir@internet
> building: CQRS hot paths · PaaS control planes · realtime products · AI pipelines
> ping:     abdulmusavirc@gmail.com
> site:     https://musavirchukkan.in
> projects: https://musavirchukkan.in/projects
> gh:       https://github.com/musavirchukkan
```

<p align="center">
  <a href="https://github.com/musavirchukkan"><img src="https://img.shields.io/badge/GitHub-Follow-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub" /></a>
  <a href="https://www.linkedin.com/in/musavirchukkan/"><img src="https://img.shields.io/badge/LinkedIn-Message-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn" /></a>
  <a href="https://musavirchukkan.in"><img src="https://img.shields.io/badge/Portfolio-Open-0ea5e9?style=for-the-badge&logo=vercel&logoColor=white" alt="Portfolio" /></a>
  <a href="mailto:abdulmusavirc@gmail.com"><img src="https://img.shields.io/badge/Email-Say%20hello-EA4335?style=for-the-badge&logo=gmail&logoColor=white" alt="Email" /></a>
</p>

<p align="center"><em>Build systems that stay correct under pressure.</em></p>
