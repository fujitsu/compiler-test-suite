#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char, unsigned short, signed short, unsigned int);
extern signed short (*v2) (signed char, unsigned short, signed short, unsigned int);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned short v5 (signed char, signed char);
extern unsigned short (*v6) (signed char, signed char);
extern signed char v9 (unsigned int, unsigned int);
extern signed char (*v10) (unsigned int, unsigned int);
extern signed int v11 (unsigned char, signed char, unsigned char);
extern signed int (*v12) (unsigned char, signed char, unsigned char);
extern signed char v13 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v14) (signed short, unsigned short, signed int, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern signed char v17 (signed int, unsigned int, signed char);
extern signed char (*v18) (signed int, unsigned int, signed char);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern signed short v25 (void);
extern signed short (*v26) (void);
signed int v27 (signed int, signed int, unsigned char, signed int);
signed int (*v28) (signed int, signed int, unsigned char, signed int) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
unsigned char v32 = 5;
signed short v31 = 3;

signed int v27 (signed int v34, signed int v35, unsigned char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 2;
unsigned short v39 = 5;
unsigned short v38 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed char v43;
unsigned short v44;
signed short v45;
unsigned int v46;
signed short v47;
v43 = 3 - -1;
v44 = 6 + 3;
v45 = v31 - v31;
v46 = 6U - 1U;
v47 = v1 (v43, v44, v45, v46);
history[history_index++] = (int)v47;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
