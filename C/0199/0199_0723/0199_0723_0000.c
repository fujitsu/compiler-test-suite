#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
extern signed int v3 (unsigned short, unsigned char, signed short);
extern signed int (*v4) (unsigned short, unsigned char, signed short);
signed short v5 (unsigned int, unsigned char, signed char);
signed short (*v6) (unsigned int, unsigned char, signed char) = v5;
signed short v7 (unsigned char, signed char, signed char);
signed short (*v8) (unsigned char, signed char, signed char) = v7;
extern void v9 (unsigned int, signed int, signed char, unsigned int);
extern void (*v10) (unsigned int, signed int, signed char, unsigned int);
extern unsigned int v11 (unsigned int, signed short, unsigned char);
extern unsigned int (*v12) (unsigned int, signed short, unsigned char);
extern signed char v13 (signed char, unsigned int, unsigned short);
extern signed char (*v14) (signed char, unsigned int, unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed short v19 (signed char, unsigned short, signed short, unsigned char);
extern signed short (*v20) (signed char, unsigned short, signed short, unsigned char);
extern unsigned char v21 (unsigned short, unsigned int);
extern unsigned char (*v22) (unsigned short, unsigned int);
extern signed short v23 (signed char);
extern signed short (*v24) (signed char);
void v25 (signed short, signed short);
void (*v26) (signed short, signed short) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
signed short v32 = -4;
signed short v31 = -1;

void v25 (signed short v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 2;
unsigned short v37 = 1;
unsigned short v36 = 7;
trace++;
switch (trace)
{
case 5: 
return;
default: abort ();
}
}
}
}

signed short v7 (unsigned char v39, signed char v40, signed char v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 0;
unsigned char v43 = 2;
unsigned short v42 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned int v45, unsigned char v46, signed char v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = -1;
unsigned short v49 = 7;
signed int v48 = -4;
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
signed int v53;
unsigned char v54;
v53 = 3 - -3;
v54 = v1 (v53);
history[history_index++] = (int)v54;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
