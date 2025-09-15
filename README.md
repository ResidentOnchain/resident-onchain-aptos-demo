# Resident: Onchain — Aptos Creator Track (Beta/Demo, 12‑Month Program)

This repository is a **public beta** for the Aptos grant application. It contains:
- A **minimal Move package** (`move/artist_demo`) with a simple entry function.
- A **static demo page** in the `/docs` folder so you can enable **GitHub Pages** in one click and get a live URL.
- A **step-by-step guide** to publish to **Aptos Testnet** and call an entry function.

> Goal: give Aptos reviewers a working **live demo** + **open-source repo** + (optional) **testnet proof**.

---

## 1) Quickstart — Publish the static demo (live link in ~5 minutes)

1. Create a public GitHub repo, e.g. `resident-onchain-aptos-demo`.
2. Upload all files from this folder.
3. Enable **GitHub Pages**: Settings → Pages → Source: `Deploy from a branch`; Branch: `main`; Folder: **`/docs`** → Save.
4. Wait ~1–3 minutes. Your **live demo** link will be:  
   `https://<your-username>.github.io/resident-onchain-aptos-demo/`

(Alternatively deploy `/docs` to Vercel/Netlify.)

---

## 2) What the demo shows
- Clean landing page explaining the track, milestones, and open‑source plan.
- Minimal dependencies to avoid breakage during review.

> Wallet‑connect or a testnet mint UI can be added later via `@aptos-labs/wallet-adapter`.

---

## 3) Minimal Move package (Testnet)
Requirements:
- **Aptos CLI** — https://aptos.dev/tools/aptos-cli/install-cli/
- Testnet profile: `aptos init --network testnet`
- Fund account: `aptos account fund-with-faucet --account <addr>`

**Set your address** in `move/artist_demo/Move.toml`:
```
[addresses]
artist_demo = "0xYOUR_ADDRESS"
```

**Publish the module:**
```bash
cd move/artist_demo
aptos move publish --profile default
```

**Call entry function:**
```bash
aptos move run   --function 0xYOUR_ADDRESS::artist_demo::register   --args string:"demo-artist"   --profile default
```

**Optional — verify resource:**
```bash
aptos account resource   --account 0xYOUR_ADDRESS   --resource 0xYOUR_ADDRESS::artist_demo::ArtistProfile
```

---

## 4) Open-source & licensing
- Code: MIT (you can switch to Apache‑2.0).
- Docs: CC BY 4.0 or CC0.

---


## 5) 12‑Month Roadmap & Milestones (Cohorts A, B, C)
- M1 (Month 1): Public repo & syllabus (kickoff)
- M2–M3: Cohort A training & testnet
- M4: Cohort A mainnet drop + Dashboard v1
- M5–M6: Materials v1.1 + Cohort B training
- M7: Cohort B mainnet drop + Dashboard v1.2
- M8–M9: Materials v1.2 + Cohort C training
- M10: Cohort C mainnet drop + Dashboard v1.3
- M11–M12: Public report, Playbook v1.0, showcase


## 6) KPIs (indicative)
- Cohorts trained; on‑chain works delivered on Aptos.
- Public repo (Move samples, commits), showcases, and a live dashboard.
- Qualitative: mentor scores, surveys, case studies.
