# Herbal Market — Starter

Modern herbal products marketplace starter scaffold.

Quick start

1. Install dependencies

```bash
npm install
```

2. Create `.env` from `.env.example` and set `DATABASE_URL` and Stripe keys.

3. Generate Prisma client and run migrations

```bash
npx prisma generate
npx prisma migrate dev --name init
```

4. Run development server

```bash
npm run dev
```

What's included

- Next.js + TypeScript
- Tailwind CSS
- Prisma schema for Postgres
- Starter API routes and pages

Next steps

- Implement authentication (JWT / next-auth)
- Build product and cart APIs
- Integrate Stripe for payments and webhooks
- Create farmer community pages and admin dashboard
- Add tests, CI, and deployment config
