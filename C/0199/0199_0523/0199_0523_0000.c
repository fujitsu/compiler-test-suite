#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned int, signed char, unsigned short, signed short);
extern signed short (*v2) (unsigned int, signed char, unsigned short, signed short);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v7 (signed short, unsigned char, signed char);
extern signed char (*v8) (signed short, unsigned char, signed char);
extern unsigned int v9 (signed int, unsigned short, signed int, signed short);
extern unsigned int (*v10) (signed int, unsigned short, signed int, signed short);
extern void v11 (signed int, unsigned char, unsigned char, signed int);
extern void (*v12) (signed int, unsigned char, unsigned char, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (unsigned char, signed int, unsigned int);
extern unsigned char (*v16) (unsigned char, signed int, unsigned int);
extern unsigned int v17 (unsigned int, unsigned int, signed char, signed char);
extern unsigned int (*v18) (unsigned int, unsigned int, signed char, signed char);
extern signed char v19 (unsigned short, unsigned short);
extern signed char (*v20) (unsigned short, unsigned short);
signed char v21 (unsigned int, signed char, unsigned short, signed int);
signed char (*v22) (unsigned int, signed char, unsigned short, signed int) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern void v25 (signed int, signed int, signed char);
extern void (*v26) (signed int, signed int, signed char);
extern signed int v27 (signed int, signed short, signed char);
extern signed int (*v28) (signed int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
signed int v32 = 3;
signed int v31 = -3;

signed char v21 (unsigned int v34, signed char v35, unsigned short v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -2;
signed char v39 = -4;
unsigned int v38 = 0U;
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
unsigned int v43;
signed char v44;
unsigned short v45;
signed short v46;
signed short v47;
v43 = 6U - 1U;
v44 = -4 - -4;
v45 = 3 + 6;
v46 = v33 + 3;
v47 = v1 (v43, v44, v45, v46);
history[history_index++] = (int)v47;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
