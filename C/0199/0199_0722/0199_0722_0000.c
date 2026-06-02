#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned int, signed short);
extern signed char (*v2) (unsigned int, signed short);
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
unsigned int v5 (signed int, unsigned char);
unsigned int (*v6) (signed int, unsigned char) = v5;
extern signed char v7 (signed int, unsigned short, unsigned int, unsigned int);
extern signed char (*v8) (signed int, unsigned short, unsigned int, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned short v15 (signed char, unsigned char, unsigned char, signed char);
extern unsigned short (*v16) (signed char, unsigned char, unsigned char, signed char);
extern void v17 (void);
extern void (*v18) (void);
extern signed char v19 (unsigned char, signed int, signed int);
extern signed char (*v20) (unsigned char, signed int, signed int);
unsigned char v21 (signed char, signed char);
unsigned char (*v22) (signed char, signed char) = v21;
void v23 (unsigned short, signed int, signed int);
void (*v24) (unsigned short, signed int, signed int) = v23;
void v25 (void);
void (*v26) (void) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern signed int v29 (signed int, signed int);
extern signed int (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
signed char v32 = -4;
unsigned int v31 = 7U;

void v25 (void)
{
{
for (;;) {
unsigned short v36 = 1;
unsigned int v35 = 4U;
signed short v34 = -1;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
return;
default: abort ();
}
}
}
}

void v23 (unsigned short v37, signed int v38, signed int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 7U;
signed short v41 = 0;
signed short v40 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed char v43, signed char v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = 1;
unsigned short v46 = 6;
signed short v45 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
unsigned char v50 = 6;
unsigned short v49 = 0;
signed char v48 = -4;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v51;
signed int v52;
signed int v53;
signed char v54;
v51 = 1 - v50;
v52 = 1 - 1;
v53 = -1 - 0;
v54 = v19 (v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 8: 
{
signed char v55;
unsigned char v56;
unsigned char v57;
signed char v58;
unsigned short v59;
v55 = -2 - -2;
v56 = v50 - v50;
v57 = v50 + 1;
v58 = -1 - v48;
v59 = v15 (v55, v56, v57, v58);
history[history_index++] = (int)v59;
}
break;
case 10: 
{
signed char v60;
unsigned char v61;
unsigned char v62;
signed char v63;
unsigned short v64;
v60 = v48 - v48;
v61 = 6 - 0;
v62 = 6 + v50;
v63 = v48 - v48;
v64 = v15 (v60, v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

unsigned int v5 (signed int v65, unsigned char v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = -3;
signed int v68 = -2;
signed char v67 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
signed char v72 = -4;
signed int v71 = 1;
signed short v70 = -1;
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
unsigned int v75;
signed short v76;
signed char v77;
v75 = v31 - 1U;
v76 = 1 + -2;
v77 = v1 (v75, v76);
history[history_index++] = (int)v77;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
