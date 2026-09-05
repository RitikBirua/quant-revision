-- Fix: allow the "+ Add Question" feature to actually insert new questions.
-- (The original setup script only allowed reading questions, not adding them.)
-- Run this once in Supabase SQL Editor.

create policy "Public insert questions"
  on questions for insert
  with check (true);
