#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, unsigned char, signed short, unsigned int);
extern signed int (*v2) (signed short, unsigned char, signed short, unsigned int);
signed char v3 (signed char, unsigned int, signed short);
signed char (*v4) (signed char, unsigned int, signed short) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern void v11 (unsigned int, signed short, unsigned short, signed short);
extern void (*v12) (unsigned int, signed short, unsigned short, signed short);
signed char v13 (unsigned short, signed char, signed int, unsigned char);
signed char (*v14) (unsigned short, signed char, signed int, unsigned char) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned short v17 (unsigned int, signed short, signed int, signed short);
extern unsigned short (*v18) (unsigned int, signed short, signed int, signed short);
extern void v19 (unsigned short, signed short);
extern void (*v20) (unsigned short, signed short);
extern unsigned short v21 (unsigned char, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned int);
extern signed char v23 (signed char, signed short);
extern signed char (*v24) (signed char, signed short);
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
extern unsigned int v27 (signed char, unsigned int, signed char, signed char);
extern unsigned int (*v28) (signed char, unsigned int, signed char, signed char);
extern void v29 (unsigned int);
extern void (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
signed int v32 = -3;
unsigned short v31 = 1;

signed char v13 (unsigned short v34, signed char v35, signed int v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 2;
unsigned char v39 = 4;
unsigned int v38 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed char v41, unsigned int v42, signed short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = 1;
unsigned int v45 = 1U;
unsigned short v44 = 2;
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
signed short v49;
unsigned char v50;
signed short v51;
unsigned int v52;
signed int v53;
v49 = -4 + -1;
v50 = 2 - 7;
v51 = -2 + -4;
v52 = 5U - 3U;
v53 = v1 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
