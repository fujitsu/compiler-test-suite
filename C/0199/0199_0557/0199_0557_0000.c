#include <stdio.h>
#include <stdlib.h>
static signed char v1 (void);
static signed char (*v2) (void) = v1;
void v3 (void);
void (*v4) (void) = v3;
extern unsigned char v5 (signed char, unsigned char);
extern unsigned char (*v6) (signed char, unsigned char);
extern unsigned int v7 (unsigned int, unsigned char, unsigned short, unsigned short);
extern unsigned int (*v8) (unsigned int, unsigned char, unsigned short, unsigned short);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
signed short v13 (void);
signed short (*v14) (void) = v13;
extern void v15 (signed int, unsigned int);
extern void (*v16) (signed int, unsigned int);
extern void v17 (signed int);
extern void (*v18) (signed int);
void v19 (signed short, signed int, signed char);
void (*v20) (signed short, signed int, signed char) = v19;
extern void v21 (unsigned char, unsigned short, unsigned char);
extern void (*v22) (unsigned char, unsigned short, unsigned char);
signed short v23 (unsigned char, signed char, signed char, signed short);
signed short (*v24) (unsigned char, signed char, signed char, signed short) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern void v27 (unsigned int, signed short, unsigned char, signed char);
extern void (*v28) (unsigned int, signed short, unsigned char, signed char);
extern unsigned short v29 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned short (*v30) (unsigned short, unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
signed char v32 = -2;
signed short v31 = 2;

signed short v23 (unsigned char v34, signed char v35, signed char v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 3;
signed char v39 = 1;
unsigned short v38 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed short v41, signed int v42, signed char v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = 2;
unsigned int v45 = 3U;
unsigned int v44 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
signed int v49 = -2;
unsigned short v48 = 0;
unsigned short v47 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
signed short v52 = 0;
signed char v51 = 3;
unsigned short v50 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
unsigned int v55 = 4U;
unsigned int v54 = 5U;
signed char v53 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
unsigned int v58 = 7U;
unsigned int v57 = 2U;
unsigned short v56 = 1;
trace++;
switch (trace)
{
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

static signed char v1 (void)
{
{
for (;;) {
signed int v61 = 0;
signed short v60 = 3;
unsigned short v59 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v62;
v62 = v25 ();
history[history_index++] = (int)v62;
}
break;
case 2: 
{
signed char v63;
unsigned char v64;
unsigned char v65;
v63 = -4 + -2;
v64 = 6 - 1;
v65 = v5 (v63, v64);
history[history_index++] = (int)v65;
}
break;
case 4: 
{
unsigned int v66;
signed short v67;
unsigned char v68;
signed char v69;
v66 = 3U + 3U;
v67 = v60 - -1;
v68 = 7 - 0;
v69 = -3 + -4;
v27 (v66, v67, v68, v69);
}
break;
case 6: 
{
unsigned int v70;
unsigned char v71;
unsigned short v72;
unsigned short v73;
unsigned int v74;
v70 = 1U - 5U;
v71 = 4 + 2;
v72 = v59 - 7;
v73 = v59 + 3;
v74 = v7 (v70, v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 12: 
return -2;
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
signed char v77;
v77 = v1 ();
history[history_index++] = (int)v77;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
