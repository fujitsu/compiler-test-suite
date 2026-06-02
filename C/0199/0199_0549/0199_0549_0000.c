#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern unsigned short v5 (signed char);
extern unsigned short (*v6) (signed char);
extern unsigned short v7 (signed short, unsigned short, unsigned int);
extern unsigned short (*v8) (signed short, unsigned short, unsigned int);
extern signed char v9 (unsigned short, signed char);
extern signed char (*v10) (unsigned short, signed char);
signed int v11 (signed char, unsigned char);
signed int (*v12) (signed char, unsigned char) = v11;
extern unsigned char v13 (signed int, signed int, unsigned short, signed short);
extern unsigned char (*v14) (signed int, signed int, unsigned short, signed short);
extern signed char v15 (unsigned int, signed int, unsigned short);
extern signed char (*v16) (unsigned int, signed int, unsigned short);
signed char v17 (void);
signed char (*v18) (void) = v17;
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
signed char v21 (void);
signed char (*v22) (void) = v21;
void v23 (signed int, unsigned int, signed int);
void (*v24) (signed int, unsigned int, signed int) = v23;
extern signed char v25 (signed int, signed int, unsigned int, unsigned short);
extern signed char (*v26) (signed int, signed int, unsigned int, unsigned short);
unsigned char v27 (signed int, signed short, unsigned char, signed int);
unsigned char (*v28) (signed int, signed short, unsigned char, signed int) = v27;
extern unsigned char v29 (unsigned short, unsigned short, signed short, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
unsigned short v32 = 1;
unsigned char v31 = 7;

unsigned char v27 (signed int v34, signed short v35, unsigned char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 5;
unsigned short v39 = 6;
signed short v38 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed int v41, unsigned int v42, signed int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 2;
unsigned short v45 = 3;
signed int v44 = -4;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
signed char v49 = -2;
unsigned int v48 = 6U;
signed int v47 = 1;
trace++;
switch (trace)
{
case 4: 
{
signed int v50;
signed int v51;
unsigned int v52;
unsigned short v53;
signed char v54;
v50 = 3 - v47;
v51 = 1 + -2;
v52 = 2U - 2U;
v53 = 6 - 7;
v54 = v25 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 6: 
{
signed int v55;
signed int v56;
unsigned int v57;
unsigned short v58;
signed char v59;
v55 = v47 + v47;
v56 = v47 + v47;
v57 = 3U + 2U;
v58 = 2 + 5;
v59 = v25 (v55, v56, v57, v58);
history[history_index++] = (int)v59;
}
break;
case 8: 
return -1;
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
signed char v62 = -4;
unsigned char v61 = 1;
unsigned int v60 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned short v65 = 3;
signed char v64 = -2;
signed char v63 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed char v66, unsigned char v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned char v70 = 7;
signed char v69 = 0;
unsigned char v68 = 6;
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
unsigned int v73 = 1U;
signed char v72 = 3;
unsigned int v71 = 5U;
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
unsigned int v76;
v76 = v1 ();
history[history_index++] = (int)v76;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
