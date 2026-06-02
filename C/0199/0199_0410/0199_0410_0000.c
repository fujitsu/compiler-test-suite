#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned short, unsigned int);
extern unsigned int (*v2) (unsigned short, unsigned short, unsigned int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
unsigned int v7 (signed int, signed int, unsigned char, signed int);
unsigned int (*v8) (signed int, signed int, unsigned char, signed int) = v7;
unsigned int v9 (unsigned char);
unsigned int (*v10) (unsigned char) = v9;
signed char v11 (signed short, unsigned int);
signed char (*v12) (signed short, unsigned int) = v11;
extern void v15 (void);
extern void (*v16) (void);
unsigned int v17 (signed char, unsigned int, unsigned short, signed int);
unsigned int (*v18) (signed char, unsigned int, unsigned short, signed int) = v17;
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned char v25 (unsigned char, unsigned char, signed char);
extern unsigned char (*v26) (unsigned char, unsigned char, signed char);
signed int v27 (signed int, signed int);
signed int (*v28) (signed int, signed int) = v27;
extern signed char v29 (unsigned char);
extern signed char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
unsigned short v32 = 7;
signed char v31 = -3;

signed int v27 (signed int v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 2;
unsigned int v37 = 1U;
signed short v36 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed char v39, unsigned int v40, unsigned short v41, signed int v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = -3;
signed short v44 = 3;
unsigned char v43 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed short v46, unsigned int v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned short v50 = 5;
signed char v49 = -1;
unsigned char v48 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned char v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
signed int v54 = 2;
signed char v53 = -3;
unsigned short v52 = 6;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v55;
signed char v56;
v55 = 3 - 4;
v56 = v29 (v55);
history[history_index++] = (int)v56;
}
break;
case 11: 
return 5U;
default: abort ();
}
}
}
}

unsigned int v7 (signed int v57, signed int v58, unsigned char v59, signed int v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 4;
signed short v62 = 0;
unsigned short v61 = 6;
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
unsigned short v66;
unsigned short v67;
unsigned int v68;
unsigned int v69;
v66 = v32 + v32;
v67 = 5 + 1;
v68 = 4U + 4U;
v69 = v1 (v66, v67, v68);
history[history_index++] = (int)v69;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
