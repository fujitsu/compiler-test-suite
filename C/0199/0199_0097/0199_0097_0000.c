#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed int, signed int, unsigned short, unsigned char);
extern unsigned int (*v2) (signed int, signed int, unsigned short, unsigned char);
void v3 (unsigned char);
void (*v4) (unsigned char) = v3;
extern signed char v5 (unsigned short, unsigned char);
extern signed char (*v6) (unsigned short, unsigned char);
signed int v7 (void);
signed int (*v8) (void) = v7;
unsigned char v9 (unsigned int, unsigned char, signed int);
unsigned char (*v10) (unsigned int, unsigned char, signed int) = v9;
unsigned int v11 (signed short, signed short, signed int);
unsigned int (*v12) (signed short, signed short, signed int) = v11;
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned char v17 (unsigned int, unsigned char, unsigned short, signed short);
extern unsigned char (*v18) (unsigned int, unsigned char, unsigned short, signed short);
static signed short v19 (signed char, unsigned char, unsigned short);
static signed short (*v20) (signed char, unsigned char, unsigned short) = v19;
extern void v21 (unsigned int, unsigned short, signed int, signed int);
extern void (*v22) (unsigned int, unsigned short, signed int, signed int);
void v23 (void);
void (*v24) (void) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
signed char v27 (signed short, unsigned short);
signed char (*v28) (signed short, unsigned short) = v27;
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed char v32 = 2;
unsigned short v31 = 2;

signed char v27 (signed short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 0U;
signed int v37 = -3;
unsigned int v36 = 1U;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v39;
v39 = v35 - 2;
v29 (v39);
}
break;
case 10: 
{
unsigned short v40;
v40 = 5 + v35;
v29 (v40);
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

void v23 (void)
{
{
for (;;) {
unsigned short v43 = 0;
unsigned int v42 = 0U;
signed short v41 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v19 (signed char v44, unsigned char v45, unsigned short v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = -1;
unsigned int v48 = 4U;
signed int v47 = -2;
trace++;
switch (trace)
{
case 2: 
return 3;
default: abort ();
}
}
}
}

unsigned int v11 (signed short v50, signed short v51, signed int v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed char v55 = -3;
signed int v54 = 3;
signed char v53 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v56, unsigned char v57, signed int v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed char v61 = -3;
unsigned int v60 = 3U;
unsigned int v59 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
signed int v64 = 2;
unsigned char v63 = 0;
signed short v62 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned char v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
unsigned short v68 = 1;
unsigned int v67 = 2U;
signed short v66 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed char v69;
unsigned char v70;
unsigned short v71;
signed short v72;
v69 = -3 + 3;
v70 = v65 + 6;
v71 = v68 + 6;
v72 = v19 (v69, v70, v71);
history[history_index++] = (int)v72;
}
break;
case 3: 
{
unsigned short v73;
unsigned char v74;
signed char v75;
v73 = 0 + v68;
v74 = v65 + v65;
v75 = v5 (v73, v74);
history[history_index++] = (int)v75;
}
break;
case 15: 
return;
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
signed int v78;
signed int v79;
unsigned short v80;
unsigned char v81;
unsigned int v82;
v78 = 2 + -2;
v79 = -1 + -2;
v80 = v31 + 3;
v81 = 4 - 6;
v82 = v1 (v78, v79, v80, v81);
history[history_index++] = (int)v82;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
