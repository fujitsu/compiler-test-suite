#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned char, signed char, signed char);
extern signed int (*v2) (unsigned short, unsigned char, signed char, signed char);
extern unsigned short v3 (signed short);
extern unsigned short (*v4) (signed short);
signed char v5 (signed int, unsigned short);
signed char (*v6) (signed int, unsigned short) = v5;
extern signed char v7 (unsigned int, unsigned short, unsigned int);
extern signed char (*v8) (unsigned int, unsigned short, unsigned int);
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
extern signed short v11 (unsigned short, unsigned char, unsigned int, unsigned int);
extern signed short (*v12) (unsigned short, unsigned char, unsigned int, unsigned int);
extern signed int v13 (signed char, signed int, unsigned short, signed char);
extern signed int (*v14) (signed char, signed int, unsigned short, signed char);
signed int v15 (unsigned char, signed short);
signed int (*v16) (unsigned char, signed short) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern void v23 (unsigned int, signed short, signed char, unsigned char);
extern void (*v24) (unsigned int, signed short, signed char, unsigned char);
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
extern unsigned char v27 (signed char, unsigned short, unsigned int);
extern unsigned char (*v28) (signed char, unsigned short, unsigned int);
extern signed char v29 (signed char, signed int);
extern signed char (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
unsigned int v32 = 3U;
signed int v31 = 3;

signed int v15 (unsigned char v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 7U;
signed int v37 = -1;
signed int v36 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed int v39, unsigned short v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 7U;
unsigned int v42 = 7U;
unsigned char v41 = 5;
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
unsigned short v46;
unsigned char v47;
signed char v48;
signed char v49;
signed int v50;
v46 = 7 - 1;
v47 = 6 + 6;
v48 = -4 - -4;
v49 = v33 - v33;
v50 = v1 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
