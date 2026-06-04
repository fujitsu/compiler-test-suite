#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (signed short, unsigned int, unsigned int);
static unsigned short (*v2) (signed short, unsigned int, unsigned int) = v1;
signed int v3 (unsigned int, unsigned int, signed int);
signed int (*v4) (unsigned int, unsigned int, signed int) = v3;
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed char v7 (signed char, unsigned short);
extern signed char (*v8) (signed char, unsigned short);
extern void v9 (signed short);
extern void (*v10) (signed short);
unsigned char v11 (signed int, unsigned int);
unsigned char (*v12) (signed int, unsigned int) = v11;
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern void v15 (unsigned short, signed short, signed int);
extern void (*v16) (unsigned short, signed short, signed int);
extern unsigned int v17 (signed char);
extern unsigned int (*v18) (signed char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (signed short, signed char, signed char);
extern unsigned int (*v22) (signed short, signed char, signed char);
unsigned short v23 (unsigned char);
unsigned short (*v24) (unsigned char) = v23;
signed short v25 (unsigned short, unsigned char, signed int, signed int);
signed short (*v26) (unsigned short, unsigned char, signed int, signed int) = v25;
unsigned short v29 (unsigned char, signed short, signed int, signed short);
unsigned short (*v30) (unsigned char, signed short, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
unsigned char v32 = 7;
unsigned short v31 = 5;

unsigned short v29 (unsigned char v34, signed short v35, signed int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -3;
signed char v39 = -2;
signed int v38 = -4;
trace++;
switch (trace)
{
case 4: 
return 6;
case 6: 
return 7;
case 10: 
return 1;
default: abort ();
}
}
}
}

signed short v25 (unsigned short v41, unsigned char v42, signed int v43, signed int v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned short v47 = 5;
unsigned int v46 = 6U;
unsigned char v45 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (unsigned char v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
unsigned char v51 = 1;
signed short v50 = -2;
signed short v49 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed int v52, unsigned int v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 1U;
unsigned char v55 = 0;
unsigned char v54 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned int v57, unsigned int v58, signed int v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = 2;
unsigned short v61 = 2;
unsigned short v60 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (signed short v63, unsigned int v64, unsigned int v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = 1;
signed int v67 = 2;
signed char v66 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v69;
unsigned int v70;
v69 = 6U + v64;
v70 = v5 (v69);
history[history_index++] = (int)v70;
}
break;
case 14: 
return 3;
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
signed short v73;
unsigned int v74;
unsigned int v75;
unsigned short v76;
v73 = 0 - 0;
v74 = 2U - 1U;
v75 = 2U - 3U;
v76 = v1 (v73, v74, v75);
history[history_index++] = (int)v76;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
