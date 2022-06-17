- #algorithm #recursion
- https://cs50.harvard.edu/x/2022/psets/3/tideman/
- For checking cycle in locked graph, using recursion for searching.
- ```c
  void lock_pairs(void)
  {
      for (int i = 0; i < pair_count; i++)
      {
          int a = pairs[i].winner;
          int b = pairs[i].loser;
          if (check_cycle(a, b))
              continue;
          else
              locked[a][b] = true;
      }
      return;
  }
  
  bool check_cycle(int s, int f)
  {
      // Try to find f->s
      // Directly success as base condition
      if (locked[f][s])
          return true;
      // Reduce f->s by finding i->s and recursive to find f->i
      for (int i = 0; i < candidate_count; i++)
      {
          if (locked[i][s])
              if (check_cycle(i, f))
                  return true;
      }
      return false;
  }
  ```
- For entire code, checkout https://github.com/me50/QiyanYu/blob/da83145ddaf309e8200e8616ddbc01ecae2cb964/tideman.c
-