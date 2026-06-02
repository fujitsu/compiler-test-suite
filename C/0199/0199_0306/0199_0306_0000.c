#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, signed int, unsigned char, signed char);
extern signed short (*v2) (signed int, signed int, unsigned char, signed char);
extern unsigned char v3 (signed char, unsigned char);
extern unsigned char (*v4) (signed char, unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
signed short v7 (signed char, signed short);
signed short (*v8) (signed char, signed short) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned int v11 (unsigned int, signed int, signed char, signed char);
extern unsigned int (*v12) (unsigned int, signed int, signed char, signed char);
extern void v13 (unsigned int, signed short);
extern void (*v14) (unsigned int, signed short);
extern void v15 (unsigned char, signed int, signed char, unsigned short);
extern void (*v16) (unsigned char, signed int, signed char, unsigned short);
extern signed char v17 (signed char, signed char, unsigned int);
extern signed char (*v18) (signed char, signed char, unsigned int);
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
extern signed int v23 (unsigned int, signed short);
extern signed int (*v24) (unsigned int, signed short);
extern signed short v25 (unsigned char, unsigned short, signed int, unsigned int);
extern signed short (*v26) (unsigned char, unsigned short, signed int, unsigned int);
void v27 (unsigned char, signed short, signed char);
void (*v28) (unsigned char, signed short, signed char) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 4U;
unsigned int v32 = 2U;
signed int v31 = -1;

void v27 (unsigned char v34, signed short v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = -3;
signed int v38 = -1;
signed char v37 = -1;
trace++;
switch (trace)
{
case 7: 
return;
case 9: 
return;
default: abort ();
}
}
}
}

signed short v7 (signed char v40, signed short v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned char v44 = 7;
unsigned int v43 = 3U;
signed char v42 = -2;
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
signed int v47;
signed int v48;
unsigned char v49;
signed char v50;
signed short v51;
v47 = -1 - v31;
v48 = 1 - -1;
v49 = 2 + 7;
v50 = -1 - 0;
v51 = v1 (v47, v48, v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
