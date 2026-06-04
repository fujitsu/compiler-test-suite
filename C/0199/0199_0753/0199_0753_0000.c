#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, unsigned short);
extern signed short (*v2) (signed int, unsigned short);
extern unsigned int v3 (signed short, signed int, unsigned char);
extern unsigned int (*v4) (signed short, signed int, unsigned char);
extern unsigned int v5 (unsigned char, signed int, unsigned int);
extern unsigned int (*v6) (unsigned char, signed int, unsigned int);
extern void v7 (signed short, signed short);
extern void (*v8) (signed short, signed short);
extern unsigned char v9 (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned char (*v10) (unsigned short, signed char, unsigned short, unsigned int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned int v13 (signed short, unsigned char, unsigned char, signed short);
extern unsigned int (*v14) (signed short, unsigned char, unsigned char, signed short);
extern signed char v15 (signed int, signed short, signed int);
extern signed char (*v16) (signed int, signed short, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed char v19 (signed int, unsigned int);
extern signed char (*v20) (signed int, unsigned int);
extern void v21 (unsigned int, signed short, unsigned int);
extern void (*v22) (unsigned int, signed short, unsigned int);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern signed short v25 (unsigned short, signed int, unsigned short);
extern signed short (*v26) (unsigned short, signed int, unsigned short);
signed char v27 (signed char, signed int, signed short, unsigned short);
signed char (*v28) (signed char, signed int, signed short, unsigned short) = v27;
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
signed int v32 = 0;
unsigned short v31 = 7;

signed short v29 (void)
{
{
for (;;) {
unsigned int v36 = 3U;
signed char v35 = 3;
signed int v34 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v27 (signed char v37, signed int v38, signed short v39, unsigned short v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed short v43 = -1;
unsigned char v42 = 2;
unsigned int v41 = 1U;
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
signed int v46;
unsigned short v47;
signed short v48;
v46 = -2 - v32;
v47 = 0 + 6;
v48 = v1 (v46, v47);
history[history_index++] = (int)v48;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
