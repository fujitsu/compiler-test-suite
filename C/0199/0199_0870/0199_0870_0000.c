#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned short, unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned short, unsigned short, unsigned int, unsigned short);
extern signed char v3 (unsigned int, signed short, unsigned short, unsigned short);
extern signed char (*v4) (unsigned int, signed short, unsigned short, unsigned short);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
unsigned char v7 (unsigned short);
unsigned char (*v8) (unsigned short) = v7;
extern unsigned char v9 (unsigned int, unsigned short, unsigned int, unsigned int);
extern unsigned char (*v10) (unsigned int, unsigned short, unsigned int, unsigned int);
extern signed int v13 (unsigned short, signed int);
extern signed int (*v14) (unsigned short, signed int);
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
void v17 (signed short);
void (*v18) (signed short) = v17;
extern signed int v19 (signed int, unsigned int);
extern signed int (*v20) (signed int, unsigned int);
unsigned char v21 (signed char, signed short, signed short);
unsigned char (*v22) (signed char, signed short, signed short) = v21;
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
void v25 (void);
void (*v26) (void) = v25;
signed short v27 (unsigned short);
signed short (*v28) (unsigned short) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
signed char v32 = 3;
signed char v31 = -1;

signed short v27 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 4U;
unsigned char v36 = 5;
signed char v35 = -1;
trace++;
switch (trace)
{
case 6: 
return -3;
default: abort ();
}
}
}
}

void v25 (void)
{
{
for (;;) {
signed char v40 = 3;
signed char v39 = -1;
unsigned short v38 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed char v41, signed short v42, signed short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 7U;
signed char v45 = 3;
signed int v44 = 1;
trace++;
switch (trace)
{
case 3: 
return 2;
default: abort ();
}
}
}
}

void v17 (signed short v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
unsigned char v50 = 2;
unsigned char v49 = 7;
signed short v48 = 2;
trace++;
switch (trace)
{
case 8: 
{
signed int v51;
v51 = v29 ();
history[history_index++] = (int)v51;
}
break;
case 10: 
return;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
unsigned char v55 = 4;
signed short v54 = -4;
unsigned int v53 = 4U;
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
unsigned short v58;
unsigned short v59;
unsigned int v60;
unsigned short v61;
unsigned char v62;
v58 = v33 - v33;
v59 = 4 - 6;
v60 = 3U + 6U;
v61 = v33 + 2;
v62 = v1 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
