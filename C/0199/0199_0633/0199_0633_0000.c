#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
unsigned char v3 (signed char, unsigned char, signed char);
unsigned char (*v4) (signed char, unsigned char, signed char) = v3;
extern signed char v5 (signed char, signed int);
extern signed char (*v6) (signed char, signed int);
extern signed char v7 (signed short);
extern signed char (*v8) (signed short);
extern unsigned int v9 (signed int);
extern unsigned int (*v10) (signed int);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed short v13 (signed int, signed short, signed short, signed int);
extern signed short (*v14) (signed int, signed short, signed short, signed int);
extern signed int v15 (unsigned int, signed short, unsigned char, unsigned short);
extern signed int (*v16) (unsigned int, signed short, unsigned char, unsigned short);
signed char v17 (unsigned short, signed short, unsigned char, unsigned int);
signed char (*v18) (unsigned short, signed short, unsigned char, unsigned int) = v17;
extern unsigned int v19 (signed int, signed char);
extern unsigned int (*v20) (signed int, signed char);
void v21 (signed short, signed char);
void (*v22) (signed short, signed char) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned int v25 (unsigned short, unsigned int, unsigned int);
extern unsigned int (*v26) (unsigned short, unsigned int, unsigned int);
extern signed char v27 (signed char, signed int, unsigned char, signed char);
extern signed char (*v28) (signed char, signed int, unsigned char, signed char);
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
unsigned int v32 = 3U;
unsigned char v31 = 3;

void v21 (signed short v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -4;
unsigned char v37 = 7;
unsigned short v36 = 2;
trace++;
switch (trace)
{
case 4: 
return;
default: abort ();
}
}
}
}

signed char v17 (unsigned short v39, signed short v40, unsigned char v41, unsigned int v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = -2;
unsigned int v44 = 6U;
unsigned short v43 = 6;
trace++;
switch (trace)
{
case 6: 
return 1;
default: abort ();
}
}
}
}

unsigned char v3 (signed char v46, unsigned char v47, signed char v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned char v51 = 5;
unsigned char v50 = 4;
unsigned int v49 = 2U;
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
unsigned char v54;
unsigned int v55;
v54 = v31 - 0;
v55 = v1 (v54);
history[history_index++] = (int)v55;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
