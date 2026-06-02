#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed char v3 (unsigned int, signed char);
extern signed char (*v4) (unsigned int, signed char);
signed char v5 (unsigned int, signed char);
signed char (*v6) (unsigned int, signed char) = v5;
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
signed char v9 (void);
signed char (*v10) (void) = v9;
unsigned short v11 (signed short, signed char);
unsigned short (*v12) (signed short, signed char) = v11;
static signed char v15 (signed int, signed char, signed int, signed int);
static signed char (*v16) (signed int, signed char, signed int, signed int) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern unsigned short v23 (unsigned int, unsigned short);
extern unsigned short (*v24) (unsigned int, unsigned short);
extern unsigned int v25 (unsigned int, signed int, signed int);
extern unsigned int (*v26) (unsigned int, signed int, signed int);
extern unsigned char v27 (unsigned short, signed short, unsigned char);
extern unsigned char (*v28) (unsigned short, signed short, unsigned char);
extern unsigned short v29 (signed short, unsigned int, signed short);
extern unsigned short (*v30) (signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
unsigned int v32 = 3U;
unsigned char v31 = 6;

unsigned int v21 (void)
{
{
for (;;) {
signed short v36 = -1;
unsigned char v35 = 6;
unsigned char v34 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v15 (signed int v37, signed char v38, signed int v39, signed int v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 2;
unsigned short v42 = 3;
signed char v41 = 0;
trace++;
switch (trace)
{
case 6: 
{
signed short v44;
v44 = v19 ();
history[history_index++] = (int)v44;
}
break;
case 14: 
return v38;
default: abort ();
}
}
}
}

unsigned short v11 (signed short v45, signed char v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed short v49 = -2;
signed short v48 = -3;
signed int v47 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed int v52 = 0;
signed short v51 = -4;
unsigned int v50 = 0U;
trace++;
switch (trace)
{
case 1: 
{
signed short v53;
v53 = v19 ();
history[history_index++] = (int)v53;
}
break;
case 5: 
{
signed int v54;
signed char v55;
signed int v56;
signed int v57;
signed char v58;
v54 = 2 + v52;
v55 = 0 + 0;
v56 = v52 + -3;
v57 = v52 - -4;
v58 = v15 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 15: 
return 3;
default: abort ();
}
}
}
}

signed char v5 (unsigned int v59, signed char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = -2;
unsigned int v62 = 7U;
signed short v61 = -2;
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
signed char v66;
v66 = v1 ();
history[history_index++] = (int)v66;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
