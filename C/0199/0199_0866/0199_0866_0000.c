#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (unsigned char, signed short);
extern signed int (*v4) (unsigned char, signed short);
extern unsigned char v5 (unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned int);
extern unsigned char v7 (signed short, unsigned short, unsigned char);
extern unsigned char (*v8) (signed short, unsigned short, unsigned char);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
unsigned char v11 (signed char);
unsigned char (*v12) (signed char) = v11;
signed char v13 (unsigned char, signed char, unsigned short, unsigned int);
signed char (*v14) (unsigned char, signed char, unsigned short, unsigned int) = v13;
extern void v15 (void);
extern void (*v16) (void);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
signed int v21 (unsigned short);
signed int (*v22) (unsigned short) = v21;
extern signed int v23 (unsigned short, signed int);
extern signed int (*v24) (unsigned short, signed int);
extern signed int v25 (unsigned char, unsigned char);
extern signed int (*v26) (unsigned char, unsigned char);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
unsigned char v29 (unsigned int, signed char, unsigned short);
unsigned char (*v30) (unsigned int, signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
unsigned char v32 = 7;
unsigned short v31 = 3;

unsigned char v29 (unsigned int v34, signed char v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 4U;
signed char v38 = -1;
unsigned char v37 = 3;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v40;
unsigned int v41;
unsigned char v42;
v40 = 1U - 7U;
v41 = v34 + v39;
v42 = v5 (v40, v41);
history[history_index++] = (int)v42;
}
break;
case 8: 
{
unsigned int v43;
unsigned int v44;
unsigned char v45;
v43 = v39 - 5U;
v44 = 6U - v39;
v45 = v5 (v43, v44);
history[history_index++] = (int)v45;
}
break;
case 10: 
{
unsigned int v46;
unsigned int v47;
unsigned char v48;
v46 = v39 + v34;
v47 = v34 - 5U;
v48 = v5 (v46, v47);
history[history_index++] = (int)v48;
}
break;
case 12: 
return v37;
default: abort ();
}
}
}
}

signed int v21 (unsigned short v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 0;
signed int v51 = 2;
unsigned int v50 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
signed char v55 = -2;
unsigned short v54 = 1;
signed short v53 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned char v56, signed char v57, unsigned short v58, unsigned int v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed char v62 = -1;
unsigned char v61 = 3;
unsigned short v60 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed char v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 5;
signed char v65 = -3;
unsigned short v64 = 7;
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
unsigned char v69;
v69 = v1 ();
history[history_index++] = (int)v69;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
