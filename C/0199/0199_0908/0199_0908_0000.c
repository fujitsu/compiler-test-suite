#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned short, signed int, unsigned short);
extern signed int (*v2) (unsigned char, unsigned short, signed int, unsigned short);
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern unsigned int v5 (unsigned short, signed char, unsigned short);
extern unsigned int (*v6) (unsigned short, signed char, unsigned short);
signed short v7 (unsigned short);
signed short (*v8) (unsigned short) = v7;
signed int v9 (void);
signed int (*v10) (void) = v9;
signed int v11 (signed int, unsigned short, unsigned short);
signed int (*v12) (signed int, unsigned short, unsigned short) = v11;
signed char v13 (unsigned int);
signed char (*v14) (unsigned int) = v13;
extern signed int v15 (unsigned char, signed int);
extern signed int (*v16) (unsigned char, signed int);
void v17 (signed short, signed int, signed short, signed int);
void (*v18) (signed short, signed int, signed short, signed int) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
signed char v21 (unsigned int, unsigned int, signed char, unsigned char);
signed char (*v22) (unsigned int, unsigned int, signed char, unsigned char) = v21;
extern signed int v23 (unsigned char, signed short);
extern signed int (*v24) (unsigned char, signed short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
unsigned int v27 (signed int, unsigned char);
unsigned int (*v28) (signed int, unsigned char) = v27;
signed char v29 (unsigned short, unsigned char);
signed char (*v30) (unsigned short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
unsigned char v32 = 0;
signed char v31 = 0;

signed char v29 (unsigned short v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 5;
signed short v37 = -2;
unsigned int v36 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (signed int v39, unsigned char v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 6U;
signed short v42 = -4;
unsigned int v41 = 4U;
trace++;
switch (trace)
{
case 10: 
return 3U;
default: abort ();
}
}
}
}

signed char v21 (unsigned int v44, unsigned int v45, signed char v46, unsigned char v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = -4;
signed int v49 = -3;
unsigned char v48 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (signed short v51, signed int v52, signed short v53, signed int v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 5;
unsigned int v56 = 0U;
signed short v55 = -4;
trace++;
switch (trace)
{
case 6: 
return;
case 8: 
{
unsigned char v58;
signed short v59;
signed int v60;
v58 = 3 - v57;
v59 = v55 - 3;
v60 = v23 (v58, v59);
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

signed char v13 (unsigned int v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
unsigned int v64 = 2U;
unsigned char v63 = 6;
signed short v62 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed int v65, unsigned short v66, unsigned short v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned char v70 = 2;
unsigned short v69 = 2;
unsigned char v68 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
unsigned char v73 = 6;
unsigned short v72 = 5;
signed int v71 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = -2;
signed int v76 = -1;
unsigned short v75 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
signed short v80 = -3;
unsigned int v79 = 6U;
unsigned char v78 = 5;
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
unsigned char v83;
unsigned short v84;
signed int v85;
unsigned short v86;
signed int v87;
v83 = v32 + 0;
v84 = 0 + 7;
v85 = -2 - -4;
v86 = 2 - 5;
v87 = v1 (v83, v84, v85, v86);
history[history_index++] = (int)v87;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
