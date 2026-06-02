#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int, signed int);
extern signed char (*v2) (unsigned int, unsigned int, signed int);
extern unsigned short v3 (unsigned char, unsigned int, signed short);
extern unsigned short (*v4) (unsigned char, unsigned int, signed short);
extern unsigned short v5 (signed short, unsigned char, unsigned int);
extern unsigned short (*v6) (signed short, unsigned char, unsigned int);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern unsigned short v9 (unsigned short, unsigned char, signed short);
extern unsigned short (*v10) (unsigned short, unsigned char, signed short);
signed short v11 (signed short);
signed short (*v12) (signed short) = v11;
extern unsigned char v13 (unsigned short, signed short);
extern unsigned char (*v14) (unsigned short, signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern signed int v19 (signed short, signed int);
extern signed int (*v20) (signed short, signed int);
extern unsigned char v21 (signed int, signed int, unsigned int);
extern unsigned char (*v22) (signed int, signed int, unsigned int);
signed char v23 (signed int);
signed char (*v24) (signed int) = v23;
signed int v25 (signed int, signed int, unsigned short, signed char);
signed int (*v26) (signed int, signed int, unsigned short, signed char) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
unsigned int v32 = 1U;
unsigned short v31 = 6;

signed int v25 (signed int v34, signed int v35, unsigned short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 7;
signed short v39 = 0;
unsigned short v38 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed int v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = -1;
unsigned char v43 = 1;
signed short v42 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
signed char v47 = 2;
unsigned int v46 = 7U;
unsigned int v45 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed short v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
unsigned char v51 = 5;
unsigned short v50 = 3;
signed char v49 = 2;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v52;
v52 = v27 ();
history[history_index++] = (int)v52;
}
break;
case 6: 
{
unsigned short v53;
v53 = v27 ();
history[history_index++] = (int)v53;
}
break;
case 8: 
{
unsigned short v54;
v54 = v27 ();
history[history_index++] = (int)v54;
}
break;
case 10: 
return v48;
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
unsigned int v57;
unsigned int v58;
signed int v59;
signed char v60;
v57 = 4U + v32;
v58 = 3U - v32;
v59 = -1 - 2;
v60 = v1 (v57, v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
