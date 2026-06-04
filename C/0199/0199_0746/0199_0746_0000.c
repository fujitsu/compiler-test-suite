#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, signed short);
extern signed int (*v2) (signed short, signed short);
extern void v3 (void);
extern void (*v4) (void);
unsigned short v7 (unsigned short, unsigned int, unsigned char, signed int);
unsigned short (*v8) (unsigned short, unsigned int, unsigned char, signed int) = v7;
signed short v9 (signed short);
signed short (*v10) (signed short) = v9;
extern void v11 (signed int);
extern void (*v12) (signed int);
void v13 (unsigned short, signed char, signed int);
void (*v14) (unsigned short, signed char, signed int) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed short v17 (unsigned short, signed short, signed int);
extern signed short (*v18) (unsigned short, signed short, signed int);
signed char v19 (unsigned int, unsigned int, signed char, unsigned int);
signed char (*v20) (unsigned int, unsigned int, signed char, unsigned int) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
void v23 (signed char);
void (*v24) (signed char) = v23;
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
extern signed char v27 (signed short, unsigned int, signed int, signed char);
extern signed char (*v28) (signed short, unsigned int, signed int, signed char);
signed int v29 (signed short, signed int, signed char);
signed int (*v30) (signed short, signed int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned char v32 = 6;
unsigned char v31 = 1;

signed int v29 (signed short v34, signed int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 1;
signed short v38 = 1;
unsigned short v37 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed char v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed short v43 = 1;
signed short v42 = 2;
signed int v41 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned int v44, unsigned int v45, signed char v46, unsigned int v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = -3;
unsigned short v49 = 1;
unsigned int v48 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned short v51, signed char v52, signed int v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 0U;
signed int v55 = 3;
signed int v54 = 2;
trace++;
switch (trace)
{
case 6: 
return;
case 10: 
{
unsigned short v57;
signed short v58;
signed int v59;
signed short v60;
v57 = v51 - v51;
v58 = 3 - 1;
v59 = v55 - -1;
v60 = v17 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed short v9 (signed short v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
unsigned int v64 = 2U;
unsigned char v63 = 1;
signed int v62 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v65, unsigned int v66, unsigned char v67, signed int v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = 0;
signed char v70 = -1;
unsigned int v69 = 0U;
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
signed short v74;
signed short v75;
signed int v76;
v74 = 2 - 2;
v75 = -3 + 0;
v76 = v1 (v74, v75);
history[history_index++] = (int)v76;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
