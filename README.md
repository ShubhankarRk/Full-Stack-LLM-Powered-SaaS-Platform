# Full-Stack LLM SaaS Platform (Next.js + FastAPI + AWS App Runner)

This project is a production-grade, full-stack AI application built with Next.js, FastAPI, and OpenAI LLMs, featuring real-time streaming, secure authentication, subscription gating, and end-to-end cloud deployment using Docker, Amazon ECR, and AWS App Runner.
It demonstrates competency in modern AI application development, LLM integration, full-stack architecture, and cloud-native deployment workflows.

## Features
### AI Functionality

- Integration with OpenAI’s GPT models for structured text generation

- Real-time streaming of model output via Server-Sent Events (SSE)

- Structured prompting designed for consistent, multi-section responses

- Configurable task logic for resume generation, consultation summaries, or domain-specific content

### Frontend (Next.js)

- Built using Next.js Pages Router and TypeScript

- Client-side authentication and token handling

- Responsive UI with Tailwind CSS

- React Markdown rendering with GFM extensions

- Static export workflow for serverless container deployment

### Backend (FastAPI)

- JWT-validated API endpoints secured via Clerk

- Pydantic models for request validation

- Streaming responses for continuous LLM output

- Unified API + static serving architecture for containerized deployment

### Authentication & Billing

- Clerk-based user authentication with support for OAuth providers

- Secure JWT verification on backend

- Subscription gating through Clerk Billing (free vs. premium access)

- Protected routes for premium features

### Cloud Deployment

- Multi-stage Docker build (Node.js → Python runtime)

- Static Next.js export served directly from FastAPI

- Container hosting via AWS App Runner

- Image storage on Amazon ECR

- IAM-secured CI-like flow for pushes & deployments

- Health checks, logging, and CloudWatch monitoring

- Cost-controlled deployment setup

## Architecture Overview
#Frontend (Next.js)
|
|--- Client-Side Auth (Clerk)
|--- Secure Token → Backend
|
Backend (FastAPI)
|
|--- JWT Verification (Clerk JWKS)
|--- SSE Streaming of LLM Output
|--- Prompt Orchestration
|
OpenAI LLMs
|
|--- GPT-based content generation

## Tech Stack

Frontend: Next.js, TypeScript, Tailwind CSS, React Markdown
Backend: Python, FastAPI, Pydantic, Clerk Auth, Uvicorn
LLM: OpenAI GPT models
Infrastructure: Docker, AWS App Runner, Amazon ECR, IAM, CloudWatch
Other: Server-Sent Events (SSE), Static Export, Subscription Billing

## Key Capabilities Demonstrated

- End-to-end LLM application design

- Secure client → server → model pipeline with JWT authentication

- Real-time streaming and markdown rendering

- Multi-stage Docker containerization

- Cloud-native deployment on AWS

- Authentication, authorization, and subscription enforcement

- Frontend + backend integration without server-side Next.js runtime

- Production monitoring and cost management

## Project Outcomes

- Delivered a production-ready LLM application with real authentication, billing, and streaming.

- Built familiarity with secure token verification, structured prompting, and LLM integration patterns.

- Demonstrated the ability to deploy AI systems using modern cloud infrastructure and containerization.

- Showcased the capability to design, build, and maintain an AI system at a full production quality level.
##
This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/pages/api-reference/create-next-app).

## Environment Variables

Create a `.env` file in the root directory with the following variables:

```bash
# Clerk Authentication
# Get these from your Clerk dashboard: https://dashboard.clerk.com
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=pk_test_...
CLERK_JWKS_URL=https://your-clerk-domain.clerk.accounts.dev/.well-known/jwks.json

# OpenAI API Key
# Get this from: https://platform.openai.com/api-keys
OPENAI_API_KEY=sk-...
```

To export these variables to your shell session, use:
```bash
# For bash/zsh - safer method that handles spaces and special characters
set -a
source .env
set +a
```

Or use the helper script:
```bash
source scripts/load-env.sh
```

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `pages/index.tsx`. The page auto-updates as you edit the file.

[API routes](https://nextjs.org/docs/pages/building-your-application/routing/api-routes) can be accessed on [http://localhost:3000/api/hello](http://localhost:3000/api/hello). This endpoint can be edited in `pages/api/hello.ts`.

The `pages/api` directory is mapped to `/api/*`. Files in this directory are treated as [API routes](https://nextjs.org/docs/pages/building-your-application/routing/api-routes) instead of React pages.

This project uses [`next/font`](https://nextjs.org/docs/pages/building-your-application/optimizing/fonts) to automatically optimize and load [Geist](https://vercel.com/font), a new font family for Vercel.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn-pages-router) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/pages/building-your-application/deploying) for more details.
