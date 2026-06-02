#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned int, unsigned char);
extern unsigned int (*v2) (signed short, unsigned int, unsigned char);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned char v5 (signed int, signed short, unsigned int, unsigned char);
extern unsigned char (*v6) (signed int, signed short, unsigned int, unsigned char);
extern void v7 (signed short);
extern void (*v8) (signed short);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (unsigned char, unsigned int);
extern signed short (*v12) (unsigned char, unsigned int);
signed int v13 (unsigned char, signed short, signed short);
signed int (*v14) (unsigned char, signed short, signed short) = v13;
signed int v15 (signed char);
signed int (*v16) (signed char) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
unsigned short v19 (signed int, unsigned char, signed char);
unsigned short (*v20) (signed int, unsigned char, signed char) = v19;
extern signed short v21 (signed short, signed char);
extern signed short (*v22) (signed short, signed char);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed int v27 (void);
extern signed int (*v28) (void);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
signed int v32 = -2;
unsigned char v31 = 1;

unsigned int v29 (void)
{
{
for (;;) {
unsigned char v36 = 3;
signed short v35 = 2;
unsigned char v34 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed int v37, unsigned char v38, signed char v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 2U;
signed char v41 = -4;
signed char v40 = -4;
trace++;
switch (trace)
{
case 10: 
return 0;
default: abort ();
}
}
}
}

signed int v15 (signed char v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned short v46 = 7;
unsigned char v45 = 7;
unsigned int v44 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned char v47, signed short v48, signed short v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = -4;
unsigned char v51 = 2;
unsigned short v50 = 2;
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
signed short v55;
unsigned int v56;
unsigned char v57;
unsigned int v58;
v55 = 3 + 0;
v56 = 0U + 5U;
v57 = 3 + v31;
v58 = v1 (v55, v56, v57);
history[history_index++] = (int)v58;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
